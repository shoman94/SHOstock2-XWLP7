.class public Lgnu/inet/imap/IMAPException;
.super Ljava/io/IOException;
.source "IMAPException.java"


# instance fields
.field protected id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lgnu/inet/imap/IMAPException;->id:Ljava/lang/String;

    .line 61
    return-void
.end method
