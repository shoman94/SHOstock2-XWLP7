.class public final Lgnu/inet/smtp/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"


# instance fields
.field final key:Ljava/lang/String;

.field final value:Ljava/lang/String;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lgnu/inet/smtp/Parameter;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lgnu/inet/smtp/Parameter;->key:Ljava/lang/String;

    .line 90
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/inet/smtp/Parameter;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/inet/smtp/Parameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
