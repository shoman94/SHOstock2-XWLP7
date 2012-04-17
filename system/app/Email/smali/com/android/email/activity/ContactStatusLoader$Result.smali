.class public Lcom/android/email/activity/ContactStatusLoader$Result;
.super Ljava/lang/Object;
.source "ContactStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ContactStatusLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field public static final UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;


# instance fields
.field public final mLookupUri:Landroid/net/Uri;

.field public final mPhoto:Landroid/graphics/Bitmap;

.field public final mPresenceResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/android/email/activity/ContactStatusLoader$Result;

    const v1, 0x108006a

    invoke-direct {v0, v2, v1, v2}, Lcom/android/email/activity/ContactStatusLoader$Result;-><init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V

    sput-object v0, Lcom/android/email/activity/ContactStatusLoader$Result;->UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V
    .locals 0
    .parameter "photo"
    .parameter "presenceResId"
    .parameter "lookupUri"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    .line 82
    iput p2, p0, Lcom/android/email/activity/ContactStatusLoader$Result;->mPresenceResId:I

    .line 83
    iput-object p3, p0, Lcom/android/email/activity/ContactStatusLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 84
    return-void
.end method
