.class Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;
.super Ljava/lang/Object;
.source "GroupSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "groupCache"
.end annotation


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public groupText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;-><init>()V

    return-void
.end method
