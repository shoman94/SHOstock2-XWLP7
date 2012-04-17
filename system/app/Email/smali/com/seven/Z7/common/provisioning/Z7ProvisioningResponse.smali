.class public Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;
.super Lcom/seven/util/IntArrayMap;
.source "Z7ProvisioningResponse.java"


# direct methods
.method public constructor <init>(Lcom/seven/util/IntArrayMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/seven/util/IntArrayMap;-><init>(Lcom/seven/util/IntArrayMap;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getConnectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/seven/util/IntArrayMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isImScope()Z
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method
