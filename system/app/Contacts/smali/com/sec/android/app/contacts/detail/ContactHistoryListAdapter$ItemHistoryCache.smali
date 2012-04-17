.class Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
.super Ljava/lang/Object;
.source "ContactHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHistoryCache"
.end annotation


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public headerView:Landroid/view/View;

.field public iSendType:Landroid/widget/ImageView;

.field public iType:Landroid/widget/ImageView;

.field public listItemView:Landroid/widget/LinearLayout;

.field public tContents:Landroid/widget/TextView;

.field public tDuration:Landroid/widget/TextView;

.field public tNumber:Landroid/widget/TextView;

.field public tSubject:Landroid/widget/TextView;

.field public tTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)V

    return-void
.end method
