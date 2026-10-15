###### Class n8.f (n8.f)
.class public final Ln8/f;
.super Ln8/e;
.source "StickerPackDao_Impl.java"


# instance fields
.field private final a:Landroidx/room/h0;

.field private final b:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Lcom/tebakgambar/sticker/model/StickerPack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/h0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ln8/e;-><init>()V

    .line 2
    iput-object p1, p0, Ln8/f;->a:Landroidx/room/h0;

    .line 3
    new-instance v0, Ln8/f$a;

    invoke-direct {v0, p0, p1}, Ln8/f$a;-><init>(Ln8/f;Landroidx/room/h0;)V

    iput-object v0, p0, Ln8/f;->b:Lx0/g;

    return-void
.end method

.method public static c()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/sticker/model/StickerPack;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM StickerPack"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v3

    .line 2
    iget-object v0, v1, Ln8/f;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 3
    iget-object v0, v1, Ln8/f;->a:Landroidx/room/h0;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_15
    const-string v0, "identifier"

    .line 4
    invoke-static {v2, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "licenseAgreementWebsite"

    .line 5
    invoke-static {v2, v5}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "name"

    .line 6
    invoke-static {v2, v6}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "privacyPolicyWebsite"

    .line 7
    invoke-static {v2, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "publisher"

    .line 8
    invoke-static {v2, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "publisherWebsite"

    .line 9
    invoke-static {v2, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "stickers"

    .line 10
    invoke-static {v2, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "trayImageUrl"

    .line 11
    invoke-static {v2, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "trayImageName"

    .line 12
    invoke-static {v2, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "androidPlayStoreLink"

    .line 13
    invoke-static {v2, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "iosAppStoreLink"

    .line 14
    invoke-static {v2, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 15
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    :goto_60
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_124

    .line 17
    new-instance v4, Lcom/tebakgambar/sticker/model/StickerPack;

    invoke-direct {v4}, Lcom/tebakgambar/sticker/model/StickerPack;-><init>()V

    .line 18
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_75

    const/4 v1, 0x0

    .line 19
    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->identifier:Ljava/lang/String;

    goto :goto_7b

    .line 20
    :cond_75
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->identifier:Ljava/lang/String;

    .line 21
    :goto_7b
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_85

    const/4 v1, 0x0

    .line 22
    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->licenseAgreementWebsite:Ljava/lang/String;

    goto :goto_8b

    .line 23
    :cond_85
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->licenseAgreementWebsite:Ljava/lang/String;

    .line 24
    :goto_8b
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_95

    const/4 v1, 0x0

    .line 25
    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->name:Ljava/lang/String;

    goto :goto_9b

    .line 26
    :cond_95
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->name:Ljava/lang/String;

    .line 27
    :goto_9b
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a5

    const/4 v1, 0x0

    .line 28
    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->privacyPolicyWebsite:Ljava/lang/String;

    goto :goto_ab

    .line 29
    :cond_a5
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->privacyPolicyWebsite:Ljava/lang/String;

    .line 30
    :goto_ab
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b5

    const/4 v1, 0x0

    .line 31
    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->publisher:Ljava/lang/String;

    goto :goto_bb

    .line 32
    :cond_b5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->publisher:Ljava/lang/String;

    .line 33
    :goto_bb
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c5

    const/4 v1, 0x0

    .line 34
    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->publisherWebsite:Ljava/lang/String;

    goto :goto_cb

    .line 35
    :cond_c5
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->publisherWebsite:Ljava/lang/String;

    .line 36
    :goto_cb
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d3

    const/4 v1, 0x0

    goto :goto_d7

    .line 37
    :cond_d3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    :goto_d7
    invoke-static {v1}, Ln8/g;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->stickers:Ljava/util/List;

    .line 39
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_e7

    const/4 v1, 0x0

    .line 40
    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageUrl:Ljava/lang/String;

    goto :goto_ed

    .line 41
    :cond_e7
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageUrl:Ljava/lang/String;

    .line 42
    :goto_ed
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_f7

    const/4 v1, 0x0

    .line 43
    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageName:Ljava/lang/String;

    goto :goto_fd

    .line 44
    :cond_f7
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageName:Ljava/lang/String;

    .line 45
    :goto_fd
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_107

    const/4 v1, 0x0

    .line 46
    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->androidPlayStoreLink:Ljava/lang/String;

    goto :goto_10d

    .line 47
    :cond_107
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->androidPlayStoreLink:Ljava/lang/String;

    .line 48
    :goto_10d
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_117

    const/4 v1, 0x0

    .line 49
    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->iosAppStoreLink:Ljava/lang/String;

    goto :goto_11d

    .line 50
    :cond_117
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tebakgambar/sticker/model/StickerPack;->iosAppStoreLink:Ljava/lang/String;

    .line 51
    :goto_11d
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_120
    .catchall {:try_start_15 .. :try_end_120} :catchall_12b

    move-object/from16 v1, p0

    goto/16 :goto_60

    .line 52
    :cond_124
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 53
    invoke-virtual {v3}, Lx0/k;->g()V

    return-object v15

    :catchall_12b
    move-exception v0

    .line 54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 55
    invoke-virtual {v3}, Lx0/k;->g()V

    .line 56
    goto :goto_134

    :goto_133
    throw v0

    :goto_134
    goto :goto_133
.end method

.method public b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/sticker/model/StickerPack;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln8/f;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Ln8/f;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_a
    iget-object v0, p0, Ln8/f;->b:Lx0/g;

    invoke-virtual {v0, p1}, Lx0/g;->h(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Ln8/f;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1a

    .line 5
    iget-object p1, p0, Ln8/f;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object v0, p0, Ln8/f;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 6
    throw p1
.end method

###### Class n8.f.a (n8.f$a)
.class Ln8/f$a;
.super Lx0/g;
.source "StickerPackDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln8/f;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/g<",
        "Lcom/tebakgambar/sticker/model/StickerPack;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ln8/f;


# direct methods
.method constructor <init>(Ln8/f;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ln8/f$a;->d:Ln8/f;

    invoke-direct {p0, p2}, Lx0/g;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "INSERT OR REPLACE INTO `StickerPack` (`identifier`,`licenseAgreementWebsite`,`name`,`privacyPolicyWebsite`,`publisher`,`publisherWebsite`,`stickers`,`trayImageUrl`,`trayImageName`,`androidPlayStoreLink`,`iosAppStoreLink`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb1/k;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/tebakgambar/sticker/model/StickerPack;

    invoke-virtual {p0, p1, p2}, Ln8/f$a;->j(Lb1/k;Lcom/tebakgambar/sticker/model/StickerPack;)V

    return-void
.end method

.method public j(Lb1/k;Lcom/tebakgambar/sticker/model/StickerPack;)V
    .registers 5

    .line 1
    iget-object v0, p2, Lcom/tebakgambar/sticker/model/StickerPack;->identifier:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 2
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_c

    .line 3
    :cond_9
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 4
    :goto_c
    iget-object v0, p2, Lcom/tebakgambar/sticker/model/StickerPack;->licenseAgreementWebsite:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_15

    .line 5
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_18

    .line 6
    :cond_15
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 7
    :goto_18
    iget-object v0, p2, Lcom/tebakgambar/sticker/model/StickerPack;->name:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_21

    .line 8
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_24

    .line 9
    :cond_21
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 10
    :goto_24
    iget-object v0, p2, Lcom/tebakgambar/sticker/model/StickerPack;->privacyPolicyWebsite:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2d

    .line 11
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_30

    .line 12
    :cond_2d
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 13
    :goto_30
    iget-object v0, p2, Lcom/tebakgambar/sticker/model/StickerPack;->publisher:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_39

    .line 14
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_3c

    .line 15
    :cond_39
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 16
    :goto_3c
    iget-object v0, p2, Lcom/tebakgambar/sticker/model/StickerPack;->publisherWebsite:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_45

    .line 17
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_48

    .line 18
    :cond_45
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 19
    :goto_48
    iget-object v0, p2, Lcom/tebakgambar/sticker/model/StickerPack;->stickers:Ljava/util/List;

    invoke-static {v0}, Ln8/g;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_55

    .line 20
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_58

    .line 21
    :cond_55
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 22
    :goto_58
    iget-object v0, p2, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageUrl:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_62

    .line 23
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_65

    .line 24
    :cond_62
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 25
    :goto_65
    iget-object v0, p2, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageName:Ljava/lang/String;

    const/16 v1, 0x9

    if-nez v0, :cond_6f

    .line 26
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_72

    .line 27
    :cond_6f
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 28
    :goto_72
    iget-object v0, p2, Lcom/tebakgambar/sticker/model/StickerPack;->androidPlayStoreLink:Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_7c

    .line 29
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_7f

    .line 30
    :cond_7c
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 31
    :goto_7f
    iget-object p2, p2, Lcom/tebakgambar/sticker/model/StickerPack;->iosAppStoreLink:Ljava/lang/String;

    const/16 v0, 0xb

    if-nez p2, :cond_89

    .line 32
    invoke-interface {p1, v0}, Lb1/i;->z2(I)V

    goto :goto_8c

    .line 33
    :cond_89
    invoke-interface {p1, v0, p2}, Lb1/i;->k0(ILjava/lang/String;)V

    :goto_8c
    return-void
.end method
