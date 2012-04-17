.class public Ljavax/mail/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field name:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Ljavax/mail/Header;->name:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Ljavax/mail/Header;->value:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljavax/mail/Header;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljavax/mail/Header;->value:Ljava/lang/String;

    return-object v0
.end method
