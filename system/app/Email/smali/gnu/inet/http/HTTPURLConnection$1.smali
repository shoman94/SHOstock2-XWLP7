.class Lgnu/inet/http/HTTPURLConnection$1;
.super Ljava/lang/Object;
.source "HTTPURLConnection.java"

# interfaces
.implements Lgnu/inet/http/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/inet/http/HTTPURLConnection;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgnu/inet/http/HTTPURLConnection;

.field final synthetic val$creds:Lgnu/inet/http/Credentials;


# direct methods
.method constructor <init>(Lgnu/inet/http/HTTPURLConnection;Lgnu/inet/http/Credentials;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lgnu/inet/http/HTTPURLConnection$1;->this$0:Lgnu/inet/http/HTTPURLConnection;

    iput-object p2, p0, Lgnu/inet/http/HTTPURLConnection$1;->val$creds:Lgnu/inet/http/Credentials;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCredentials(Ljava/lang/String;I)Lgnu/inet/http/Credentials;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 205
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection$1;->val$creds:Lgnu/inet/http/Credentials;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
