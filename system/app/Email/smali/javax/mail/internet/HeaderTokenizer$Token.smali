.class public Ljavax/mail/internet/HeaderTokenizer$Token;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/HeaderTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field private type:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->type:I

    .line 88
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->value:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->value:Ljava/lang/String;

    return-object v0
.end method
