.class public Lgnu/activation/viewers/TextEditor;
.super Ljava/awt/TextArea;
.source "TextEditor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Ljavax/activation/CommandObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 54
    const-string v0, ""

    const/16 v1, 0x18

    const/16 v2, 0x50

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/awt/TextArea;-><init>(Ljava/lang/String;III)V

    .line 55
    return-void
.end method
