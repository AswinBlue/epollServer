#include "MySQL.h"
#include "Logger.h"

#include <list>
#include <iostream>


using namespace std;

MySQL::MySQL(const std::string& host, const int port, const std::string& user, const std::string& password) {
    mysqlx::Session(host, port, user, password);
    MySQL::host = host;
    MySQL::port = port;
    MySQL::user = user;
    MySQL::password = password;
    LOG_INFO("MySQL: session created");
}

MySQL::~MySQL() {
    mysqlx::getSession(this->host, this->port, this->user, this->password).close();
    LOG_INFO("MySQL: session closed");
}
/*
    @database : schema, correspond to database
    @table : collection, correspond to table;
    @query: query for find datas
*/
mysqlx::DocResult MySQL::find (const std::string& database, const std::string& table, const char* query) {
    LOG_DEBUG("find data from DB", database, table, query);
    mysqlx::DocResult docs;
    try {
        mysqlx::Session session = mysqlx::getSession(this->host, this->port, this->user, this->password);
        mysqlx::Schema sch = session.getSchema(database);
        mysqlx::Collection coll = sch.getCollection(table, true); // get pre-existing one if already exist

        docs = coll.find(query).execute();
        return docs;
    }
    catch (const mysqlx::Error &err) {
        LOG_ERROR(err.what());
        return docs;
    }
    catch (std::exception &ex) {
        LOG_ERROR(ex.what());
        return docs;
    }
    catch (const char *ex) {
        LOG_ERROR(ex);
        return docs;
    }
}

/* 
    @database : schema, correspond to database
    @table : collection, correspond to table;
    @docs: list of documents to insert
*/
mysqlx::Result MySQL::upload(const std::string& database, const std::string& table, std::list<std::string> docs) {
    LOG_DEBUG("uploading data to db");
    mysqlx::Result r;
    try {
        mysqlx::Session session = mysqlx::getSession(this->host, this->port, this->user, this->password);
        mysqlx::Schema sch = session.getSchema(database);
        mysqlx::Collection coll = sch.createCollection(table, true);
        
        std::list<string> ids;
        for (std::string s : docs) {
            r = coll.add(s).execute();
            ids = r.getGeneratedIds();
            if (ids.size() != 0) {
                for (std::string id : ids) {
                    LOG_DEBUG("- added doc with id: ", id);
                    // TODO : find way to print with spdlog api
                    std::cout << "ids : " << id << std::endl;
                }
            }
        }
        return r;
    }
    catch (const mysqlx::Error &err) {
        LOG_ERROR(err.what());
        return r;
    }
    catch (std::exception &ex) {
        LOG_ERROR(ex.what());
        return r;
    }
    catch (const char *ex) {
        LOG_ERROR(ex);
        return r;
    }
}

/* 
    @database : schema, correspond to database
    @table : collection, correspond to table;
    @query : query for find things to remove
*/
mysqlx::Result MySQL::remove (const std::string& database, const std::string& table, const char* query) {
    LOG_DEBUG("remove db");
    mysqlx::Result r;
    try {
        mysqlx::Session session = mysqlx::getSession(this->host, this->port, this->user, this->password);
        mysqlx::Schema sch = session.getSchema(database);
        mysqlx::Collection coll = sch.createCollection(table, true);
        r = coll.remove(query).execute(); // remove all collections if query == "true"
        LOG_DEBUG("remove ok");
        return r;
    }
    catch (const mysqlx::Error &err) {
        LOG_ERROR(err.what());
        return r;
    }
    catch (std::exception &ex) {
        LOG_ERROR(ex.what());
        return r;
    }
    catch (const char *ex) {
        LOG_ERROR(ex);
        return r;
    }
}

/* 
    @r: collections to modify
    @field : field to change
    @value : value to change
*/
template<typename T>
mysqlx::CollectionModify MySQL::modify_set (mysqlx::CollectionModify& r, const char* field, const T value) {
    LOG_DEBUG("modify db");
    try {
        r = r.set(field, value);
        LOG_DEBUG("add field to collection ok");
        return r;
    }
    catch (const mysqlx::Error &err) {
        LOG_ERROR(err.what());
        return r;
    }
    catch (std::exception &ex) {
        LOG_ERROR(ex.what());
        return r;
    }
    catch (const char *ex) {
        LOG_ERROR(ex);
        return r;
    }
}

/* 
    @r: collections to modify
    @field : field to change
    @value : value to change
*/
template<typename T>
mysqlx::CollectionModify MySQL::modify_arrayAppend (mysqlx::CollectionModify& r, const char* field, const T value) {
    LOG_DEBUG("modify db");
    try {
        r = r.arrayAppend(field, value);
        LOG_DEBUG("add item to array in collection ok");
        return r;
    }
    catch (const mysqlx::Error &err) {
        LOG_ERROR(err.what());
        return r;
    }
    catch (std::exception &ex) {
        LOG_ERROR(ex.what());
        return r;
    }
    catch (const char *ex) {
        LOG_ERROR(ex);
        return r;
    }
}

/* 
    @r: collections to modify
    @field : field to change
*/
mysqlx::CollectionModify MySQL::modify_unset (mysqlx::CollectionModify& r, const char* field) {
    LOG_DEBUG("modify db");
    try {
        r = r.unset(field);
        LOG_DEBUG("remove field in collection ok");
        return r;
    }
    catch (const mysqlx::Error &err) {
        LOG_ERROR(err.what());
        return r;
    }
    catch (std::exception &ex) {
        LOG_ERROR(ex.what());
        return r;
    }
    catch (const char *ex) {
        LOG_ERROR(ex);
        return r;
    }
}

/*
    @database : schema, correspond to database
    @table : collection, correspond to table;
    @query: query for find datas
*/
mysqlx::CollectionModify MySQL::modify (const std::string& database, const std::string& table, const char* query) {
    // TODO : took these into try -catch phrase
    LOG_DEBUG("find db to modify");
    mysqlx::Session session = mysqlx::getSession(this->host, this->port, this->user, this->password);
    mysqlx::Schema sch = session.getSchema(database);
    mysqlx::Collection coll = sch.createCollection(table, true);
    mysqlx::CollectionModify r = coll.modify(query); // select all collections if query == "true"

    LOG_DEBUG("found collection to modify ok");
    return r;
}
