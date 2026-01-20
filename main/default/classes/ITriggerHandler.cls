public interface ITriggerHandler {
    void beforeInsert();
    void beforeUpdate();
    void afterInsert();
}