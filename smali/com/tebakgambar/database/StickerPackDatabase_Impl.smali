###### Class com.tebakgambar.database.StickerPackDatabase_Impl (com.tebakgambar.database.StickerPackDatabase_Impl)
.class public final Lcom/tebakgambar/database/StickerPackDatabase_Impl;
.super Lcom/tebakgambar/database/StickerPackDatabase;
.source "StickerPackDatabase_Impl.java"


# instance fields
.field private volatile p:Ln8/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/database/StickerPackDatabase;-><init>()V

    return-void
.end method

.method static synthetic E(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/room/h0;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic F(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/room/h0;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic G(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/room/h0;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic H(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/room/h0;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic I(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/room/h0;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic J(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/room/h0;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic K(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/room/h0;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic L(Lcom/tebakgambar/database/StickerPackDatabase_Impl;Lb1/g;)Lb1/g;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/room/h0;->a:Lb1/g;

    return-object p1
.end method

.method static synthetic M(Lcom/tebakgambar/database/StickerPackDatabase_Impl;Lb1/g;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/h0;->t(Lb1/g;)V

    return-void
.end method

.method static synthetic N(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/room/h0;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic O(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/room/h0;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public D()Ln8/e;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->p:Ln8/e;

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->p:Ln8/e;

    return-object v0

    .line 3
    :cond_7
    monitor-enter p0

    .line 4
    :try_start_8
    iget-object v0, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->p:Ln8/e;

    if-nez v0, :cond_13

    .line 5
    new-instance v0, Ln8/f;

    invoke-direct {v0, p0}, Ln8/f;-><init>(Landroidx/room/h0;)V

    iput-object v0, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->p:Ln8/e;

    .line 6
    :cond_13
    iget-object v0, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->p:Ln8/e;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected g()Landroidx/room/o;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Landroidx/room/o;

    const-string v3, "StickerPack"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/o;-><init>(Landroidx/room/h0;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected h(Landroidx/room/i;)Lb1/h;
    .registers 6

    .line 1
    new-instance v0, Landroidx/room/i0;

    new-instance v1, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;-><init>(Lcom/tebakgambar/database/StickerPackDatabase_Impl;I)V

    const-string v2, "536717b5e86c3fbca0e130f5b49b2173"

    const-string v3, "d23da86bc56a5318dc205c96f7daed73"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/i0;-><init>(Landroidx/room/i;Landroidx/room/i0$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Landroidx/room/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lb1/h$b;->a(Landroid/content/Context;)Lb1/h$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/i;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lb1/h$b$a;->c(Ljava/lang/String;)Lb1/h$b$a;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lb1/h$b$a;->b(Lb1/h$a;)Lb1/h$b$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lb1/h$b$a;->a()Lb1/h$b;

    move-result-object v0

    .line 6
    iget-object p1, p1, Landroidx/room/i;->a:Lb1/h$c;

    invoke-interface {p1, v0}, Lb1/h$c;->a(Lb1/h$b;)Lb1/h;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/util/Map;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ly0/a;",
            ">;",
            "Ly0/a;",
            ">;)",
            "Ljava/util/List<",
            "Ly0/b;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ly0/b;

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public n()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ly0/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected o()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Ln8/e;

    invoke-static {}, Ln8/f;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

###### Class com.tebakgambar.database.StickerPackDatabase_Impl.a (com.tebakgambar.database.StickerPackDatabase_Impl$a)
.class Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;
.super Landroidx/room/i0$a;
.source "StickerPackDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/database/StickerPackDatabase_Impl;->h(Landroidx/room/i;)Lb1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/tebakgambar/database/StickerPackDatabase_Impl;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/i0$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lb1/g;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS `StickerPack` (`identifier` TEXT NOT NULL, `licenseAgreementWebsite` TEXT, `name` TEXT, `privacyPolicyWebsite` TEXT, `publisher` TEXT, `publisherWebsite` TEXT, `stickers` TEXT, `trayImageUrl` TEXT, `trayImageName` TEXT, `androidPlayStoreLink` TEXT, `iosAppStoreLink` TEXT, PRIMARY KEY(`identifier`))"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'536717b5e86c3fbca0e130f5b49b2173\')"

    .line 3
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lb1/g;)V
    .registers 5

    const-string v0, "DROP TABLE IF EXISTS `StickerPack`"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-static {v0}, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->E(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-static {v1}, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->F(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_18
    if-ge v0, v1, :cond_2c

    .line 4
    iget-object v2, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-static {v2}, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->H(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/h0$b;

    invoke-virtual {v2, p1}, Landroidx/room/h0$b;->b(Lb1/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2c
    return-void
.end method

.method protected c(Lb1/g;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-static {v0}, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->I(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-static {v1}, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->J(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_13
    if-ge v0, v1, :cond_27

    .line 3
    iget-object v2, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-static {v2}, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->K(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/h0$b;

    invoke-virtual {v2, p1}, Landroidx/room/h0$b;->a(Lb1/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public d(Lb1/g;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-static {v0, p1}, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->L(Lcom/tebakgambar/database/StickerPackDatabase_Impl;Lb1/g;)Lb1/g;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-static {v0, p1}, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->M(Lcom/tebakgambar/database/StickerPackDatabase_Impl;Lb1/g;)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-static {v0}, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->N(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-static {v1}, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->O(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1d
    if-ge v0, v1, :cond_31

    .line 5
    iget-object v2, p0, Lcom/tebakgambar/database/StickerPackDatabase_Impl$a;->b:Lcom/tebakgambar/database/StickerPackDatabase_Impl;

    invoke-static {v2}, Lcom/tebakgambar/database/StickerPackDatabase_Impl;->G(Lcom/tebakgambar/database/StickerPackDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/h0$b;

    invoke-virtual {v2, p1}, Landroidx/room/h0$b;->c(Lb1/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_31
    return-void
.end method

.method public e(Lb1/g;)V
    .registers 2

    return-void
.end method

.method public f(Lb1/g;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lz0/c;->a(Lb1/g;)V

    return-void
.end method

.method protected g(Lb1/g;)Landroidx/room/i0$b;
    .registers 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Lz0/g$a;

    const-string v3, "identifier"

    const-string v4, "TEXT"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lz0/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "identifier"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lz0/g$a;

    const-string v4, "licenseAgreementWebsite"

    const-string v5, "TEXT"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lz0/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "licenseAgreementWebsite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lz0/g$a;

    const-string v4, "name"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lz0/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lz0/g$a;

    const-string v4, "privacyPolicyWebsite"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lz0/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "privacyPolicyWebsite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lz0/g$a;

    const-string v4, "publisher"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lz0/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "publisher"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lz0/g$a;

    const-string v4, "publisherWebsite"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lz0/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "publisherWebsite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lz0/g$a;

    const-string v4, "stickers"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lz0/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "stickers"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lz0/g$a;

    const-string v4, "trayImageUrl"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lz0/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "trayImageUrl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lz0/g$a;

    const-string v4, "trayImageName"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lz0/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "trayImageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lz0/g$a;

    const-string v4, "androidPlayStoreLink"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lz0/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "androidPlayStoreLink"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Lz0/g$a;

    const-string v4, "iosAppStoreLink"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lz0/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "iosAppStoreLink"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 14
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    new-instance v4, Lz0/g;

    const-string v5, "StickerPack"

    invoke-direct {v4, v5, v0, v1, v3}, Lz0/g;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 16
    invoke-static {p1, v5}, Lz0/g;->a(Lb1/g;Ljava/lang/String;)Lz0/g;

    move-result-object p1

    .line 17
    invoke-virtual {v4, p1}, Lz0/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    .line 18
    new-instance v0, Landroidx/room/i0$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StickerPack(com.tebakgambar.sticker.model.StickerPack).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n Found:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroidx/room/i0$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 19
    :cond_ef
    new-instance p1, Landroidx/room/i0$b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/room/i0$b;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method
