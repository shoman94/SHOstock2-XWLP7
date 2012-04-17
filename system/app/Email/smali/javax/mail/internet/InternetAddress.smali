.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 100
    invoke-static {p1, p2}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 101
    array-length v1, v0

    if-eq v1, v3, :cond_0

    .line 103
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal address"

    invoke-direct {v0, v1, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 106
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 107
    aget-object v0, v0, v2

    iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 108
    if-eqz p2, :cond_1

    .line 110
    invoke-static {p1, v3, v3}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    .line 112
    :cond_1
    return-void
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 480
    .line 485
    if-nez p0, :cond_2

    .line 487
    :try_start_0
    const-string v1, "user.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 515
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 517
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 523
    :goto_1
    if-eqz v2, :cond_1

    .line 525
    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 537
    :cond_1
    :goto_2
    return-object v0

    .line 492
    :cond_2
    const-string v1, "mail.from"

    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    if-nez v1, :cond_6

    .line 495
    const-string v2, "mail.user"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 496
    if-nez v3, :cond_3

    .line 498
    const-string v2, "user.name"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    :cond_3
    if-nez v3, :cond_4

    .line 502
    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 504
    :cond_4
    const-string v2, "mail.host"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    if-nez v2, :cond_0

    .line 507
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    .line 508
    if-eqz v4, :cond_0

    .line 510
    invoke-virtual {v4}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 534
    :catch_0
    move-exception v1

    goto :goto_2

    .line 531
    :catch_1
    move-exception v1

    goto :goto_2

    .line 528
    :catch_2
    move-exception v1

    goto :goto_2

    :cond_5
    move-object v2, v1

    goto :goto_1

    :cond_6
    move-object v2, v0

    move-object v3, v0

    goto :goto_0
.end method

.method private static isGroupAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 384
    if-lez v0, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSimpleAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 365
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parse(Ljava/lang/String;I)[Ljavax/mail/internet/InternetAddress;
    .locals 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 615
    const/4 v9, 0x0

    .line 616
    const/4 v8, 0x0

    .line 617
    const/4 v6, 0x0

    .line 618
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 619
    const/4 v5, -0x1

    .line 620
    const/4 v2, -0x1

    .line 621
    const/4 v3, -0x1

    .line 622
    const/4 v0, -0x1

    .line 623
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 626
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v10, :cond_18

    .line 628
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 629
    sparse-switch v4, :sswitch_data_0

    .line 874
    const/4 v4, -0x1

    if-ne v2, v4, :cond_20

    move v2, v1

    move v4, v6

    move v7, v9

    move v6, v8

    .line 626
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v8, v6

    move v9, v7

    move v6, v4

    goto :goto_0

    :sswitch_0
    move v4, v6

    move v7, v9

    move v6, v8

    .line 635
    goto :goto_1

    .line 638
    :sswitch_1
    const/4 v7, 0x1

    .line 639
    if-eqz v8, :cond_0

    .line 641
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Too many route-addr"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 644
    :cond_0
    if-nez v9, :cond_23

    .line 647
    if-ltz v2, :cond_1

    move v0, v1

    .line 651
    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 653
    :goto_2
    add-int/lit8 v6, v1, 0x1

    .line 654
    const/4 v5, 0x0

    .line 655
    const/4 v4, 0x0

    .line 656
    :goto_3
    if-ge v6, v10, :cond_4

    if-nez v4, :cond_4

    .line 658
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 659
    sparse-switch v1, :sswitch_data_1

    :cond_2
    move v1, v4

    move v4, v5

    move v5, v6

    .line 675
    :goto_4
    add-int/lit8 v6, v5, 0x1

    move v5, v4

    move v4, v1

    .line 676
    goto :goto_3

    .line 662
    :sswitch_2
    if-nez v5, :cond_3

    const/4 v1, 0x1

    :goto_5
    move v5, v6

    move v12, v1

    move v1, v4

    move v4, v12

    .line 663
    goto :goto_4

    .line 662
    :cond_3
    const/4 v1, 0x0

    goto :goto_5

    .line 665
    :sswitch_3
    if-nez v5, :cond_2

    .line 667
    const/4 v1, 0x1

    .line 668
    add-int/lit8 v4, v6, -0x1

    move v12, v5

    move v5, v4

    move v4, v12

    goto :goto_4

    .line 672
    :sswitch_4
    add-int/lit8 v1, v6, 0x1

    move v12, v4

    move v4, v5

    move v5, v1

    move v1, v12

    goto :goto_4

    .line 677
    :cond_4
    if-nez v4, :cond_6

    if-lt v6, v10, :cond_6

    .line 679
    if-eqz v5, :cond_5

    .line 681
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'\"\'"

    invoke-direct {v0, v1, p0, v6}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 684
    :cond_5
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'<\'"

    invoke-direct {v0, v1, p0, v6}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 686
    :cond_6
    const/4 v1, 0x1

    move v5, v6

    move v4, v7

    move v7, v9

    move v12, v6

    move v6, v1

    move v1, v12

    move v13, v2

    move v2, v3

    move v3, v13

    .line 688
    goto :goto_1

    .line 690
    :sswitch_5
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Unmatched \'>\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 693
    :sswitch_6
    const/4 v6, 0x1

    .line 694
    if-ltz v2, :cond_7

    const/4 v4, -0x1

    if-ne v5, v4, :cond_7

    move v5, v1

    .line 698
    :cond_7
    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    .line 700
    add-int/lit8 v3, v1, 0x1

    .line 702
    :cond_8
    add-int/lit8 v4, v1, 0x1

    .line 703
    const/4 v1, 0x1

    .line 704
    :goto_6
    if-ge v4, v10, :cond_9

    if-lez v1, :cond_9

    .line 706
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 707
    sparse-switch v7, :sswitch_data_2

    .line 719
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 710
    :sswitch_7
    add-int/lit8 v1, v1, 0x1

    .line 711
    goto :goto_7

    .line 713
    :sswitch_8
    add-int/lit8 v1, v1, -0x1

    .line 714
    goto :goto_7

    .line 716
    :sswitch_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 721
    :cond_9
    if-lez v1, :cond_a

    .line 723
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'(\'"

    invoke-direct {v0, v1, p0, v4}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 725
    :cond_a
    add-int/lit8 v1, v4, -0x1

    .line 726
    const/4 v4, -0x1

    if-ne v0, v4, :cond_20

    move v0, v1

    move v4, v6

    move v7, v9

    move v6, v8

    .line 728
    goto/16 :goto_1

    .line 732
    :sswitch_a
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Unmatched \')\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 735
    :sswitch_b
    const/4 v6, 0x1

    .line 736
    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    move v2, v1

    .line 740
    :cond_b
    add-int/lit8 v4, v1, 0x1

    .line 741
    const/4 v1, 0x0

    .line 742
    :goto_8
    if-ge v4, v10, :cond_c

    if-nez v1, :cond_c

    .line 744
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 745
    sparse-switch v7, :sswitch_data_3

    .line 755
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 748
    :sswitch_c
    const/4 v1, 0x1

    .line 749
    add-int/lit8 v4, v4, -0x1

    .line 750
    goto :goto_9

    .line 752
    :sswitch_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 757
    :cond_c
    if-lt v4, v10, :cond_22

    .line 759
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'\"\'"

    invoke-direct {v0, v1, p0, v4}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 765
    :sswitch_e
    const/4 v6, 0x1

    .line 766
    add-int/lit8 v4, v1, 0x1

    .line 767
    const/4 v1, 0x0

    .line 768
    :goto_a
    if-ge v4, v10, :cond_d

    if-nez v1, :cond_d

    .line 770
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 771
    packed-switch v7, :pswitch_data_0

    .line 781
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 774
    :pswitch_0
    const/4 v1, 0x1

    .line 775
    add-int/lit8 v4, v4, -0x1

    .line 776
    goto :goto_b

    .line 778
    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 783
    :cond_d
    if-lt v4, v10, :cond_22

    .line 785
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Unmatched \'[\'"

    invoke-direct {v0, v1, p0, v4}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 791
    :sswitch_f
    const/4 v4, -0x1

    if-ne v2, v4, :cond_e

    .line 793
    const/4 v6, 0x0

    .line 794
    const/4 v4, 0x0

    .line 795
    const/4 v5, -0x1

    move v7, v9

    .line 796
    goto/16 :goto_1

    .line 798
    :cond_e
    if-eqz v9, :cond_f

    move v4, v6

    move v7, v9

    move v6, v8

    .line 800
    goto/16 :goto_1

    .line 802
    :cond_f
    const/4 v4, -0x1

    if-ne v5, v4, :cond_21

    move v4, v1

    .line 807
    :goto_c
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 808
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 809
    if-nez v6, :cond_10

    or-int/lit8 v4, p1, 0x3

    if-eqz v4, :cond_15

    .line 811
    :cond_10
    and-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_11

    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_12

    .line 813
    :cond_11
    const/4 v4, 0x0

    invoke-static {v2, v8, v4}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    .line 815
    :cond_12
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 816
    invoke-virtual {v4, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 817
    if-ltz v3, :cond_13

    .line 819
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 822
    const/4 v0, -0x1

    move v3, v0

    .line 824
    :cond_13
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_14
    const/4 v6, 0x0

    .line 840
    const/4 v4, 0x0

    .line 841
    const/4 v2, -0x1

    .line 842
    const/4 v5, -0x1

    move v7, v9

    .line 843
    goto/16 :goto_1

    .line 828
    :cond_15
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 829
    :goto_d
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 831
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 832
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    .line 833
    new-instance v5, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v5}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 834
    invoke-virtual {v5, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 846
    :sswitch_10
    const/4 v4, 0x1

    .line 847
    if-eqz v9, :cond_16

    .line 849
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Cannot have nested group"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 852
    :cond_16
    const/4 v6, 0x1

    move v7, v6

    move v6, v8

    .line 853
    goto/16 :goto_1

    .line 855
    :sswitch_11
    if-nez v9, :cond_17

    .line 857
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Unexpected \';\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 860
    :cond_17
    const/4 v5, 0x0

    .line 861
    add-int/lit8 v4, v1, 0x1

    .line 863
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 864
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 865
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 866
    invoke-virtual {v4, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    const/4 v4, 0x0

    .line 870
    const/4 v2, -0x1

    move v7, v5

    move v5, v2

    move v12, v4

    move v4, v6

    move v6, v12

    .line 871
    goto/16 :goto_1

    .line 882
    :cond_18
    const/4 v4, -0x1

    if-le v2, v4, :cond_1d

    .line 884
    const/4 v4, -0x1

    if-ne v5, v4, :cond_1f

    .line 888
    :goto_e
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 889
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 890
    if-nez v6, :cond_19

    or-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_1e

    .line 892
    :cond_19
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1a

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1b

    .line 894
    :cond_1a
    const/4 v2, 0x0

    invoke-static {v1, v8, v2}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    .line 896
    :cond_1b
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 897
    invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 898
    if-ltz v3, :cond_1c

    .line 900
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 902
    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 904
    :cond_1c
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    .line 921
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 922
    return-object v0

    .line 908
    :cond_1e
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 909
    :goto_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 911
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 912
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljavax/mail/internet/InternetAddress;->validate(Ljava/lang/String;ZZ)V

    .line 913
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 914
    invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1f
    move v1, v5

    goto :goto_e

    :cond_20
    move v4, v6

    move v7, v9

    move v6, v8

    goto/16 :goto_1

    :cond_21
    move v4, v5

    goto/16 :goto_c

    :cond_22
    move v1, v4

    move v7, v9

    move v4, v6

    move v6, v8

    goto/16 :goto_1

    :cond_23
    move v12, v3

    move v3, v2

    move v2, v12

    goto/16 :goto_2

    .line 629
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_b
        0x28 -> :sswitch_6
        0x29 -> :sswitch_a
        0x2c -> :sswitch_f
        0x3a -> :sswitch_10
        0x3b -> :sswitch_11
        0x3c -> :sswitch_1
        0x3e -> :sswitch_5
        0x5b -> :sswitch_e
    .end sparse-switch

    .line 659
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_2
        0x3e -> :sswitch_3
        0x5c -> :sswitch_4
    .end sparse-switch

    .line 707
    :sswitch_data_2
    .sparse-switch
        0x28 -> :sswitch_7
        0x29 -> :sswitch_8
        0x5c -> :sswitch_9
    .end sparse-switch

    .line 745
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_d
    .end sparse-switch

    .line 771
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 585
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;I)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x5c

    const/4 v1, 0x0

    const/16 v6, 0x22

    .line 1023
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 1025
    :goto_0
    if-ge v2, v3, :cond_9

    .line 1027
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1028
    if-eq v4, v6, :cond_0

    if-ne v4, v7, :cond_5

    .line 1030
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1031
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1032
    :goto_1
    if-ge v0, v3, :cond_3

    .line 1034
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1035
    if-eq v1, v6, :cond_1

    if-ne v1, v7, :cond_2

    .line 1037
    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1039
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1032
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1041
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1042
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1060
    :cond_4
    :goto_2
    return-object p0

    .line 1044
    :cond_5
    const/16 v5, 0x20

    if-ge v4, v5, :cond_6

    const/16 v5, 0xd

    if-eq v4, v5, :cond_6

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    const/16 v5, 0x9

    if-ne v4, v5, :cond_7

    :cond_6
    const/16 v5, 0x7f

    if-ge v4, v5, :cond_7

    const-string v5, "()<>@,;:\\\".[]"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_8

    .line 1048
    :cond_7
    const/4 v0, 0x1

    .line 1025
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1052
    :cond_9
    if-eqz v0, :cond_4

    .line 1054
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1055
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1056
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1057
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1058
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 432
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 434
    :cond_0
    const/4 v0, 0x0

    .line 462
    :goto_0
    return-object v0

    .line 436
    :cond_1
    const-string v2, "\r\n"

    .line 437
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 438
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_6

    .line 440
    if-eqz v0, :cond_2

    .line 442
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    add-int/lit8 p1, p1, 0x2

    .line 445
    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 447
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 448
    if-gez v1, :cond_3

    .line 450
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 452
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 454
    add-int/2addr v1, p1

    const/16 v7, 0x4c

    if-le v1, v7, :cond_4

    .line 456
    const-string v1, "\r\n\t"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    const/16 p1, 0x8

    .line 459
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    const/4 v1, -0x1

    if-le v6, v1, :cond_5

    add-int/2addr p1, v5

    .line 438
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 460
    :cond_5
    sub-int v1, v5, v6

    add-int/lit8 p1, v1, -0x2

    goto :goto_2

    .line 462
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x5c

    const/16 v3, 0x22

    const/4 v1, 0x0

    .line 1068
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1069
    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1071
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1072
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 1074
    add-int/lit8 v2, v0, -0x2

    .line 1075
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1076
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1078
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1079
    if-ne v0, v5, :cond_0

    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_0

    .line 1081
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1083
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1085
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1088
    :cond_2
    return-object p0
.end method

.method private static validate(Ljava/lang/String;ZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x40

    const/16 v6, 0x2c

    const/16 v5, 0x3a

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 930
    .line 931
    if-eqz p2, :cond_0

    if-eqz p1, :cond_4

    .line 933
    :cond_0
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 934
    if-gez v0, :cond_10

    .line 936
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v2, v0

    move v0, v1

    .line 938
    :cond_1
    :goto_0
    if-le v2, v4, :cond_5

    .line 940
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_2

    .line 942
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal route-addr"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_3

    .line 946
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 947
    if-gez v2, :cond_1

    .line 949
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    .line 954
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v4

    .line 955
    goto :goto_0

    :cond_4
    move v0, v1

    .line 962
    :cond_5
    const/4 v2, 0x0

    .line 963
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 964
    if-le v3, v4, :cond_8

    .line 966
    if-ne v3, v0, :cond_6

    .line 968
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Missing local name"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_7

    .line 972
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Missing domain"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_7
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 975
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 983
    :goto_1
    const-string v5, "\t\n\r "

    .line 984
    const/4 v6, 0x4

    move v3, v1

    .line 985
    :goto_2
    if-ge v3, v6, :cond_a

    .line 987
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v4, :cond_9

    .line 989
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal whitespace"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_8
    if-eqz p2, :cond_f

    .line 979
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Missing final @domain"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 992
    :cond_a
    const-string v5, "\"(),:;<>@[\\]"

    .line 993
    const/16 v6, 0xc

    move v3, v1

    .line 994
    :goto_3
    if-ge v3, v6, :cond_c

    .line 996
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v4, :cond_b

    .line 998
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal local name"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1001
    :cond_c
    if-eqz v0, :cond_e

    .line 1003
    :goto_4
    if-ge v1, v6, :cond_e

    .line 1005
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v4, :cond_d

    .line 1007
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal domain"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1011
    :cond_e
    return-void

    :cond_f
    move-object v0, v2

    move-object v2, p0

    goto :goto_1

    :cond_10
    move v2, v0

    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v0}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 146
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v1, v0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v1, v0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v1, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 149
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 391
    instance-of v0, p1, Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 393
    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 394
    if-eq p0, p1, :cond_0

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 394
    goto :goto_0

    :cond_2
    move v0, v1

    .line 397
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 276
    :goto_0
    return-object v0

    .line 264
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 268
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 273
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3e

    const/16 v2, 0x3c

    .line 298
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 315
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 328
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isGroupAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isSimpleAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    :cond_2
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3e

    const/16 v2, 0x3c

    .line 338
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isGroupAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isSimpleAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
