.class public final Lgnu/inet/util/SaslCallbackHandler;
.super Ljava/lang/Object;
.source "SaslCallbackHandler.java"

# interfaces
.implements Ljavax/security/auth/callback/CallbackHandler;


# instance fields
.field private final password:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# virtual methods
.method public handle([Ljavax/security/auth/callback/Callback;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/security/auth/callback/UnsupportedCallbackException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 87
    aget-object v0, p1, v1

    instance-of v0, v0, Ljavax/security/auth/callback/NameCallback;

    if-eqz v0, :cond_0

    .line 89
    aget-object v0, p1, v1

    check-cast v0, Ljavax/security/auth/callback/NameCallback;

    .line 90
    iget-object v2, p0, Lgnu/inet/util/SaslCallbackHandler;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    .line 85
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_0
    aget-object v0, p1, v1

    instance-of v0, v0, Ljavax/security/auth/callback/PasswordCallback;

    if-eqz v0, :cond_1

    .line 94
    aget-object v0, p1, v1

    check-cast v0, Ljavax/security/auth/callback/PasswordCallback;

    .line 95
    iget-object v2, p0, Lgnu/inet/util/SaslCallbackHandler;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1

    .line 99
    :cond_1
    new-instance v0, Ljavax/security/auth/callback/UnsupportedCallbackException;

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljavax/security/auth/callback/UnsupportedCallbackException;-><init>(Ljavax/security/auth/callback/Callback;)V

    throw v0

    .line 102
    :cond_2
    return-void
.end method
