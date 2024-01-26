package model;

import org.jdbi.v3.core.Jdbi;

public abstract class AdBean {
    public abstract boolean insert(Jdbi db);
}
