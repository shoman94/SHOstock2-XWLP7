.class public Lcom/seven/Z7/common/settings/Z7SettingsManager;
.super Ljava/lang/Object;
.source "Z7SettingsManager.java"


# instance fields
.field private final service:Lcom/seven/Z7/common/IZ7Service;


# direct methods
.method public constructor <init>(Lcom/seven/Z7/common/IZ7Service;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/seven/Z7/common/settings/Z7SettingsManager;->service:Lcom/seven/Z7/common/IZ7Service;

    .line 24
    return-void
.end method

.method private getPreference(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "accountId"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/seven/Z7/common/settings/Z7SettingsManager;->service:Lcom/seven/Z7/common/IZ7Service;

    new-instance v2, Lcom/seven/Z7/common/Z7Preference;

    invoke-direct {v2, p2, p3}, Lcom/seven/Z7/common/Z7Preference;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Lcom/seven/Z7/common/IZ7Service;->getPreference(ILcom/seven/Z7/common/Z7Preference;)Lcom/seven/Z7/common/Z7Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seven/Z7/common/Z7Preference;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 32
    .end local p3
    :goto_0
    return-object p3

    .line 29
    .restart local p3
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Z7SettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getting value for preference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returning defaults"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getStringPreference(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/seven/Z7/common/settings/Z7SettingsManager;->getPreference(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
