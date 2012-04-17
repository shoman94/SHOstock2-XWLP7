.class final Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;
.super Ljava/lang/Object;
.source "ContactsViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/widget/ContactsViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 80
    iget v0, p1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    check-cast p1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .end local p1
    check-cast p2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;->compare(Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method
