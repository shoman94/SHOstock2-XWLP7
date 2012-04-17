.class public Lgnu/activation/viewers/TextViewer;
.super Ljava/awt/TextArea;
.source "TextViewer.java"

# interfaces
.implements Ljavax/activation/CommandObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 49
    const-string v0, ""

    const/16 v1, 0x18

    const/16 v2, 0x50

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/awt/TextArea;-><init>(Ljava/lang/String;III)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/activation/viewers/TextViewer;->setEditable(Z)V

    .line 51
    return-void
.end method
