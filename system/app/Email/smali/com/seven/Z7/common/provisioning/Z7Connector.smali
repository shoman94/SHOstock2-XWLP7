.class public Lcom/seven/Z7/common/provisioning/Z7Connector;
.super Ljava/lang/Object;
.source "Z7Connector.java"


# instance fields
.field m_conn:Lcom/seven/Z7/common/provisioning/Z7ProvConnectorMap;

.field m_subConn:Lcom/seven/Z7/common/provisioning/Z7ProvSubConnectorMap;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    .local v0, str:Ljava/lang/StringBuffer;
    const-string v1, "Connector: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    iget-object v1, p0, Lcom/seven/Z7/common/provisioning/Z7Connector;->m_conn:Lcom/seven/Z7/common/provisioning/Z7ProvConnectorMap;

    invoke-virtual {v1}, Lcom/seven/Z7/common/provisioning/Z7ProvConnectorMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const-string v1, "Sub-Connector: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    iget-object v1, p0, Lcom/seven/Z7/common/provisioning/Z7Connector;->m_subConn:Lcom/seven/Z7/common/provisioning/Z7ProvSubConnectorMap;

    invoke-virtual {v1}, Lcom/seven/Z7/common/provisioning/Z7ProvSubConnectorMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
