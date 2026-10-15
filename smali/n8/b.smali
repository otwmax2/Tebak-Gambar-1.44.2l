###### Class n8.b (n8.b)
.class public final Ln8/b;
.super Ln8/a;
.source "LevelDao_Impl.java"


# instance fields
.field private final a:Landroidx/room/h0;

.field private final b:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Lcom/tebakgambar/model/Versioning;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lx0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/f<",
            "Lcom/tebakgambar/model/Versioning;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lx0/l;


# direct methods
.method public constructor <init>(Landroidx/room/h0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ln8/a;-><init>()V

    .line 2
    iput-object p1, p0, Ln8/b;->a:Landroidx/room/h0;

    .line 3
    new-instance v0, Ln8/b$a;

    invoke-direct {v0, p0, p1}, Ln8/b$a;-><init>(Ln8/b;Landroidx/room/h0;)V

    iput-object v0, p0, Ln8/b;->b:Lx0/g;

    .line 4
    new-instance v0, Ln8/b$b;

    invoke-direct {v0, p0, p1}, Ln8/b$b;-><init>(Ln8/b;Landroidx/room/h0;)V

    iput-object v0, p0, Ln8/b;->c:Lx0/g;

    .line 5
    new-instance v0, Ln8/b$c;

    invoke-direct {v0, p0, p1}, Ln8/b$c;-><init>(Ln8/b;Landroidx/room/h0;)V

    iput-object v0, p0, Ln8/b;->d:Lx0/f;

    .line 6
    new-instance v0, Ln8/b$d;

    invoke-direct {v0, p0, p1}, Ln8/b$d;-><init>(Ln8/b;Landroidx/room/h0;)V

    iput-object v0, p0, Ln8/b;->e:Lx0/l;

    return-void
.end method

.method static synthetic l(Ln8/b;Ljava/util/List;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ln8/a;->i(Ljava/util/List;)V

    return-void
.end method

.method static synthetic m(Ln8/b;Ljava/util/List;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ln8/a;->g(Ljava/util/List;)V

    return-void
.end method

.method public static n()Ljava/util/List;
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
.method public a()V
    .registers 4

    .line 1
    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Ln8/b;->e:Lx0/l;

    invoke-virtual {v0}, Lx0/l;->a()Lb1/k;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->e()V

    .line 4
    :try_start_10
    invoke-interface {v0}, Lb1/k;->u0()I

    .line 5
    iget-object v1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->A()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_23

    .line 6
    iget-object v1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 7
    iget-object v1, p0, Ln8/b;->e:Lx0/l;

    invoke-virtual {v1, v0}, Lx0/l;->f(Lb1/k;)V

    return-void

    :catchall_23
    move-exception v1

    .line 8
    iget-object v2, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v2}, Landroidx/room/h0;->i()V

    .line 9
    iget-object v2, p0, Ln8/b;->e:Lx0/l;

    invoke-virtual {v2, v0}, Lx0/l;->f(Lb1/k;)V

    .line 10
    throw v1
.end method

.method public b()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM Level"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v3

    .line 2
    iget-object v0, v1, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 3
    iget-object v0, v1, Ln8/b;->a:Landroidx/room/h0;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_15
    const-string v0, "id"

    .line 4
    invoke-static {v2, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "title"

    .line 5
    invoke-static {v2, v5}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "subtitle"

    .line 6
    invoke-static {v2, v6}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "zipLevelUrl"

    .line 7
    invoke-static {v2, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "iconUrl"

    .line 8
    invoke-static {v2, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "frameUrl"

    .line 9
    invoke-static {v2, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "achievementId"

    .line 10
    invoke-static {v2, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sliderId"

    .line 11
    invoke-static {v2, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "quotes"

    .line 12
    invoke-static {v2, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "version"

    .line 13
    invoke-static {v2, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "color"

    .line 14
    invoke-static {v2, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backgroundColor"

    .line 15
    invoke-static {v2, v15}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "comingSoon"

    .line 16
    invoke-static {v2, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "soalRecehIds"

    .line 17
    invoke-static {v2, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_69
    .catchall {:try_start_15 .. :try_end_69} :catchall_166

    move-object/from16 v16, v3

    .line 18
    :try_start_6b
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v17, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    :goto_76
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 20
    new-instance v1, Lcom/tebakgambar/model/Level;

    invoke-direct {v1}, Lcom/tebakgambar/model/Level;-><init>()V

    move-object/from16 v18, v3

    .line 21
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/tebakgambar/model/Level;->id:I

    .line 22
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v3, 0x0

    .line 23
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    goto :goto_99

    .line 24
    :cond_93
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    .line 25
    :goto_99
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a3

    const/4 v3, 0x0

    .line 26
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    goto :goto_a9

    .line 27
    :cond_a3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    .line 28
    :goto_a9
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x0

    .line 29
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    goto :goto_b9

    .line 30
    :cond_b3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    .line 31
    :goto_b9
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_c3

    const/4 v3, 0x0

    .line 32
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    goto :goto_c9

    .line 33
    :cond_c3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    .line 34
    :goto_c9
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_d3

    const/4 v3, 0x0

    .line 35
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    goto :goto_d9

    .line 36
    :cond_d3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    .line 37
    :goto_d9
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_e3

    const/4 v3, 0x0

    .line 38
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    goto :goto_e9

    .line 39
    :cond_e3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    .line 40
    :goto_e9
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/tebakgambar/model/Level;->sliderId:I

    .line 41
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_f9

    const/4 v3, 0x0

    .line 42
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    goto :goto_ff

    .line 43
    :cond_f9
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    .line 44
    :goto_ff
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/tebakgambar/model/Level;->version:I

    .line 45
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_10f

    const/4 v3, 0x0

    .line 46
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    goto :goto_115

    .line 47
    :cond_10f
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    .line 48
    :goto_115
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_11f

    const/4 v3, 0x0

    .line 49
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    goto :goto_125

    .line 50
    :cond_11f
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    .line 51
    :goto_125
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_12d

    const/4 v3, 0x0

    goto :goto_131

    .line 52
    :cond_12d
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    :goto_131
    invoke-static {v3}, Ln8/g;->e(Ljava/lang/String;)Lcom/tebakgambar/model/ComingSoon;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    move/from16 v3, v17

    .line 54
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_144

    move/from16 v19, v0

    const/16 v17, 0x0

    goto :goto_14a

    .line 55
    :cond_144
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v19, v0

    .line 56
    :goto_14a
    invoke-static/range {v17 .. v17}, Ln8/g;->f(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, v1, Lcom/tebakgambar/model/Level;->soalRecehIds:[I

    move-object/from16 v0, v18

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_155
    .catchall {:try_start_6b .. :try_end_155} :catchall_164

    move/from16 v17, v3

    move-object v3, v0

    move/from16 v0, v19

    goto/16 :goto_76

    :cond_15c
    move-object v0, v3

    .line 58
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 59
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    return-object v0

    :catchall_164
    move-exception v0

    goto :goto_169

    :catchall_166
    move-exception v0

    move-object/from16 v16, v3

    .line 60
    :goto_169
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 61
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    .line 62
    goto :goto_171

    :goto_170
    throw v0

    :goto_171
    goto :goto_170
.end method

.method public c(I)Lcom/tebakgambar/model/Level;
    .registers 19

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM Level where id = ? LIMIT 1"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Lx0/k;->s1(IJ)V

    .line 3
    iget-object v0, v1, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 4
    iget-object v0, v1, Ln8/b;->a:Landroidx/room/h0;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_1c
    const-string v0, "id"

    .line 5
    invoke-static {v2, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "title"

    .line 6
    invoke-static {v2, v5}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "subtitle"

    .line 7
    invoke-static {v2, v6}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "zipLevelUrl"

    .line 8
    invoke-static {v2, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "iconUrl"

    .line 9
    invoke-static {v2, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "frameUrl"

    .line 10
    invoke-static {v2, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "achievementId"

    .line 11
    invoke-static {v2, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sliderId"

    .line 12
    invoke-static {v2, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "quotes"

    .line 13
    invoke-static {v2, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "version"

    .line 14
    invoke-static {v2, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "color"

    .line 15
    invoke-static {v2, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backgroundColor"

    .line 16
    invoke-static {v2, v15}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "comingSoon"

    .line 17
    invoke-static {v2, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "soalRecehIds"

    .line 18
    invoke-static {v2, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 19
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16
    :try_end_74
    .catchall {:try_start_1c .. :try_end_74} :catchall_153

    if-eqz v16, :cond_148

    move-object/from16 v16, v3

    .line 20
    :try_start_78
    new-instance v3, Lcom/tebakgambar/model/Level;

    invoke-direct {v3}, Lcom/tebakgambar/model/Level;-><init>()V

    .line 21
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/tebakgambar/model/Level;->id:I

    .line 22
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8d

    const/4 v0, 0x0

    .line 23
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    goto :goto_93

    .line 24
    :cond_8d
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    .line 25
    :goto_93
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9d

    const/4 v0, 0x0

    .line 26
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    goto :goto_a3

    .line 27
    :cond_9d
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    .line 28
    :goto_a3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    const/4 v0, 0x0

    .line 29
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    goto :goto_b3

    .line 30
    :cond_ad
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    .line 31
    :goto_b3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_bd

    const/4 v0, 0x0

    .line 32
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    goto :goto_c3

    .line 33
    :cond_bd
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    .line 34
    :goto_c3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_cd

    const/4 v0, 0x0

    .line 35
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    goto :goto_d3

    .line 36
    :cond_cd
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    .line 37
    :goto_d3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/4 v0, 0x0

    .line 38
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    goto :goto_e3

    .line 39
    :cond_dd
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    .line 40
    :goto_e3
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/tebakgambar/model/Level;->sliderId:I

    .line 41
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f3

    const/4 v0, 0x0

    .line 42
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    goto :goto_f9

    .line 43
    :cond_f3
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    .line 44
    :goto_f9
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/tebakgambar/model/Level;->version:I

    .line 45
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_109

    const/4 v0, 0x0

    .line 46
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    goto :goto_10f

    .line 47
    :cond_109
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    .line 48
    :goto_10f
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_119

    const/4 v0, 0x0

    .line 49
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    goto :goto_120

    :cond_119
    const/4 v0, 0x0

    .line 50
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    .line 51
    :goto_120
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_128

    move-object v4, v0

    goto :goto_12c

    .line 52
    :cond_128
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    :goto_12c
    invoke-static {v4}, Ln8/g;->e(Ljava/lang/String;)Lcom/tebakgambar/model/ComingSoon;

    move-result-object v4

    iput-object v4, v3, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    .line 54
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_13a

    move-object v4, v0

    goto :goto_13e

    .line 55
    :cond_13a
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    :goto_13e
    invoke-static {v4}, Ln8/g;->f(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->soalRecehIds:[I
    :try_end_144
    .catchall {:try_start_78 .. :try_end_144} :catchall_146

    move-object v4, v3

    goto :goto_14c

    :catchall_146
    move-exception v0

    goto :goto_156

    :cond_148
    move-object/from16 v16, v3

    const/4 v0, 0x0

    move-object v4, v0

    .line 57
    :goto_14c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 58
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    return-object v4

    :catchall_153
    move-exception v0

    move-object/from16 v16, v3

    .line 59
    :goto_156
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 60
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    .line 61
    throw v0
.end method

.method public d(I)Lcom/tebakgambar/model/LevelWithVersioning;
    .registers 21

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM Level join Versioning on Level.id = Versioning.levelId where id = ? LIMIT 1"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Lx0/k;->s1(IJ)V

    .line 3
    iget-object v0, v1, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 4
    iget-object v0, v1, Ln8/b;->a:Landroidx/room/h0;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_1c
    const-string v0, "id"

    .line 5
    invoke-static {v2, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "title"

    .line 6
    invoke-static {v2, v5}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "subtitle"

    .line 7
    invoke-static {v2, v6}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "zipLevelUrl"

    .line 8
    invoke-static {v2, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "iconUrl"

    .line 9
    invoke-static {v2, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "frameUrl"

    .line 10
    invoke-static {v2, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "achievementId"

    .line 11
    invoke-static {v2, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sliderId"

    .line 12
    invoke-static {v2, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "quotes"

    .line 13
    invoke-static {v2, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "version"

    .line 14
    invoke-static {v2, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "color"

    .line 15
    invoke-static {v2, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backgroundColor"

    .line 16
    invoke-static {v2, v15}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "comingSoon"

    .line 17
    invoke-static {v2, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "soalRecehIds"

    .line 18
    invoke-static {v2, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_70
    .catchall {:try_start_1c .. :try_end_70} :catchall_1ed

    move-object/from16 v16, v3

    :try_start_72
    const-string v3, "levelId"

    .line 19
    invoke-static {v2, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "downloadedVersion"

    .line 20
    invoke-static {v2, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 21
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_1e2

    .line 22
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_db

    goto :goto_e3

    :cond_db
    move/from16 v18, v3

    move/from16 v1, v17

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto/16 :goto_1b3

    :cond_e3
    :goto_e3
    move/from16 v18, v3

    .line 23
    new-instance v3, Lcom/tebakgambar/model/Level;

    invoke-direct {v3}, Lcom/tebakgambar/model/Level;-><init>()V

    .line 24
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/tebakgambar/model/Level;->id:I

    .line 25
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v0, 0x0

    .line 26
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    goto :goto_100

    .line 27
    :cond_fa
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    .line 28
    :goto_100
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_10a

    const/4 v0, 0x0

    .line 29
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    goto :goto_110

    .line 30
    :cond_10a
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    .line 31
    :goto_110
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_11a

    const/4 v0, 0x0

    .line 32
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    goto :goto_120

    .line 33
    :cond_11a
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    .line 34
    :goto_120
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_12a

    const/4 v0, 0x0

    .line 35
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    goto :goto_130

    .line 36
    :cond_12a
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    .line 37
    :goto_130
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_13a

    const/4 v0, 0x0

    .line 38
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    goto :goto_140

    .line 39
    :cond_13a
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    .line 40
    :goto_140
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_14a

    const/4 v0, 0x0

    .line 41
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    goto :goto_150

    .line 42
    :cond_14a
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    .line 43
    :goto_150
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/tebakgambar/model/Level;->sliderId:I

    .line 44
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_160

    const/4 v0, 0x0

    .line 45
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    goto :goto_166

    .line 46
    :cond_160
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    .line 47
    :goto_166
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/tebakgambar/model/Level;->version:I

    .line 48
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_176

    const/4 v0, 0x0

    .line 49
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    goto :goto_17c

    .line 50
    :cond_176
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    .line 51
    :goto_17c
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_186

    const/4 v0, 0x0

    .line 52
    iput-object v0, v3, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    goto :goto_18d

    :cond_186
    const/4 v0, 0x0

    .line 53
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    .line 54
    :goto_18d
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_195

    move-object v4, v0

    goto :goto_199

    .line 55
    :cond_195
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    :goto_199
    invoke-static {v4}, Ln8/g;->e(Ljava/lang/String;)Lcom/tebakgambar/model/ComingSoon;

    move-result-object v4

    iput-object v4, v3, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    .line 57
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1a7

    move-object v1, v0

    goto :goto_1ab

    .line 58
    :cond_1a7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_1ab
    invoke-static {v1}, Ln8/g;->f(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, v3, Lcom/tebakgambar/model/Level;->soalRecehIds:[I

    move/from16 v1, v17

    .line 60
    :goto_1b3
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1c4

    move/from16 v4, v18

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1c2

    goto :goto_1c6

    :cond_1c2
    :goto_1c2
    move-object v4, v0

    goto :goto_1d8

    :cond_1c4
    move/from16 v4, v18

    .line 61
    :goto_1c6
    new-instance v0, Lcom/tebakgambar/model/Versioning;

    invoke-direct {v0}, Lcom/tebakgambar/model/Versioning;-><init>()V

    .line 62
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tebakgambar/model/Versioning;->levelId:I

    .line 63
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tebakgambar/model/Versioning;->downloadedVersion:I

    goto :goto_1c2

    .line 64
    :goto_1d8
    new-instance v0, Lcom/tebakgambar/model/LevelWithVersioning;

    invoke-direct {v0}, Lcom/tebakgambar/model/LevelWithVersioning;-><init>()V

    .line 65
    iput-object v3, v0, Lcom/tebakgambar/model/LevelWithVersioning;->level:Lcom/tebakgambar/model/Level;

    .line 66
    iput-object v4, v0, Lcom/tebakgambar/model/LevelWithVersioning;->versioning:Lcom/tebakgambar/model/Versioning;
    :try_end_1e1
    .catchall {:try_start_72 .. :try_end_1e1} :catchall_1eb

    goto :goto_1e3

    :cond_1e2
    const/4 v0, 0x0

    :goto_1e3
    move-object v4, v0

    .line 67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 68
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    return-object v4

    :catchall_1eb
    move-exception v0

    goto :goto_1f0

    :catchall_1ed
    move-exception v0

    move-object/from16 v16, v3

    .line 69
    :goto_1f0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 70
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    .line 71
    goto :goto_1f8

    :goto_1f7
    throw v0

    :goto_1f8
    goto :goto_1f7
.end method

.method public e()Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/LevelWithVersioning;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM Level join Versioning on Level.id = Versioning.levelId"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v3

    .line 2
    iget-object v0, v1, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 3
    iget-object v0, v1, Ln8/b;->a:Landroidx/room/h0;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_15
    const-string v0, "id"

    .line 4
    invoke-static {v2, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "title"

    .line 5
    invoke-static {v2, v5}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "subtitle"

    .line 6
    invoke-static {v2, v6}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "zipLevelUrl"

    .line 7
    invoke-static {v2, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "iconUrl"

    .line 8
    invoke-static {v2, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "frameUrl"

    .line 9
    invoke-static {v2, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "achievementId"

    .line 10
    invoke-static {v2, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sliderId"

    .line 11
    invoke-static {v2, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "quotes"

    .line 12
    invoke-static {v2, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "version"

    .line 13
    invoke-static {v2, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "color"

    .line 14
    invoke-static {v2, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backgroundColor"

    .line 15
    invoke-static {v2, v15}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "comingSoon"

    .line 16
    invoke-static {v2, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "soalRecehIds"

    .line 17
    invoke-static {v2, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_69
    .catchall {:try_start_15 .. :try_end_69} :catchall_21b

    move-object/from16 v16, v3

    :try_start_6b
    const-string v3, "levelId"

    .line 18
    invoke-static {v2, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "downloadedVersion"

    .line 19
    invoke-static {v2, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v19, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    :goto_86
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_212

    .line 22
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    move/from16 v1, v19

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-nez v19, :cond_e3

    goto :goto_ee

    :cond_e3
    move/from16 v21, v0

    move-object/from16 v19, v3

    move/from16 v0, v17

    const/4 v3, 0x0

    goto/16 :goto_1c6

    :cond_ec
    move/from16 v1, v19

    :goto_ee
    move-object/from16 v19, v3

    .line 23
    new-instance v3, Lcom/tebakgambar/model/Level;

    invoke-direct {v3}, Lcom/tebakgambar/model/Level;-><init>()V

    move/from16 v20, v1

    .line 24
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/tebakgambar/model/Level;->id:I

    .line 25
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_107

    const/4 v1, 0x0

    .line 26
    iput-object v1, v3, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    goto :goto_10d

    .line 27
    :cond_107
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    .line 28
    :goto_10d
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_117

    const/4 v1, 0x0

    .line 29
    iput-object v1, v3, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    goto :goto_11d

    .line 30
    :cond_117
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    .line 31
    :goto_11d
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_127

    const/4 v1, 0x0

    .line 32
    iput-object v1, v3, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    goto :goto_12d

    .line 33
    :cond_127
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    .line 34
    :goto_12d
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_137

    const/4 v1, 0x0

    .line 35
    iput-object v1, v3, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    goto :goto_13d

    .line 36
    :cond_137
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    .line 37
    :goto_13d
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_147

    const/4 v1, 0x0

    .line 38
    iput-object v1, v3, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    goto :goto_14d

    .line 39
    :cond_147
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    .line 40
    :goto_14d
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_157

    const/4 v1, 0x0

    .line 41
    iput-object v1, v3, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    goto :goto_15d

    .line 42
    :cond_157
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    .line 43
    :goto_15d
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/tebakgambar/model/Level;->sliderId:I

    .line 44
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_16d

    const/4 v1, 0x0

    .line 45
    iput-object v1, v3, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    goto :goto_173

    .line 46
    :cond_16d
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    .line 47
    :goto_173
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/tebakgambar/model/Level;->version:I

    .line 48
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_183

    const/4 v1, 0x0

    .line 49
    iput-object v1, v3, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    goto :goto_189

    .line 50
    :cond_183
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    .line 51
    :goto_189
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_193

    const/4 v1, 0x0

    .line 52
    iput-object v1, v3, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    goto :goto_199

    .line 53
    :cond_193
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    .line 54
    :goto_199
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1a1

    const/4 v1, 0x0

    goto :goto_1a5

    .line 55
    :cond_1a1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_1a5
    invoke-static {v1}, Ln8/g;->e(Ljava/lang/String;)Lcom/tebakgambar/model/ComingSoon;

    move-result-object v1

    iput-object v1, v3, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    move/from16 v1, v20

    .line 57
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_1b8

    move/from16 v21, v0

    const/16 v20, 0x0

    goto :goto_1be

    .line 58
    :cond_1b8
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v21, v0

    .line 59
    :goto_1be
    invoke-static/range {v20 .. v20}, Ln8/g;->f(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, v3, Lcom/tebakgambar/model/Level;->soalRecehIds:[I

    move/from16 v0, v17

    .line 60
    :goto_1c6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_1dd

    move/from16 v20, v1

    move/from16 v1, v18

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-nez v17, :cond_1d7

    goto :goto_1e1

    :cond_1d7
    move/from16 v17, v4

    move/from16 v18, v5

    const/4 v4, 0x0

    goto :goto_1f6

    :cond_1dd
    move/from16 v20, v1

    move/from16 v1, v18

    :goto_1e1
    move/from16 v17, v4

    .line 61
    new-instance v4, Lcom/tebakgambar/model/Versioning;

    invoke-direct {v4}, Lcom/tebakgambar/model/Versioning;-><init>()V

    move/from16 v18, v5

    .line 62
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/tebakgambar/model/Versioning;->levelId:I

    .line 63
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/tebakgambar/model/Versioning;->downloadedVersion:I

    .line 64
    :goto_1f6
    new-instance v5, Lcom/tebakgambar/model/LevelWithVersioning;

    invoke-direct {v5}, Lcom/tebakgambar/model/LevelWithVersioning;-><init>()V

    .line 65
    iput-object v3, v5, Lcom/tebakgambar/model/LevelWithVersioning;->level:Lcom/tebakgambar/model/Level;

    .line 66
    iput-object v4, v5, Lcom/tebakgambar/model/LevelWithVersioning;->versioning:Lcom/tebakgambar/model/Versioning;

    move-object/from16 v3, v19

    .line 67
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_204
    .catchall {:try_start_6b .. :try_end_204} :catchall_219

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v19, v20

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v0, v21

    goto/16 :goto_86

    .line 68
    :cond_212
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 69
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    return-object v3

    :catchall_219
    move-exception v0

    goto :goto_21e

    :catchall_21b
    move-exception v0

    move-object/from16 v16, v3

    .line 70
    :goto_21e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 71
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    .line 72
    goto :goto_226

    :goto_225
    throw v0

    :goto_226
    goto :goto_225
.end method

.method public f()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM Level where id % 2 != 0"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v3

    .line 2
    iget-object v0, v1, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 3
    iget-object v0, v1, Ln8/b;->a:Landroidx/room/h0;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_15
    const-string v0, "id"

    .line 4
    invoke-static {v2, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "title"

    .line 5
    invoke-static {v2, v5}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "subtitle"

    .line 6
    invoke-static {v2, v6}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "zipLevelUrl"

    .line 7
    invoke-static {v2, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "iconUrl"

    .line 8
    invoke-static {v2, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "frameUrl"

    .line 9
    invoke-static {v2, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "achievementId"

    .line 10
    invoke-static {v2, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sliderId"

    .line 11
    invoke-static {v2, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "quotes"

    .line 12
    invoke-static {v2, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "version"

    .line 13
    invoke-static {v2, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "color"

    .line 14
    invoke-static {v2, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backgroundColor"

    .line 15
    invoke-static {v2, v15}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "comingSoon"

    .line 16
    invoke-static {v2, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "soalRecehIds"

    .line 17
    invoke-static {v2, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_69
    .catchall {:try_start_15 .. :try_end_69} :catchall_166

    move-object/from16 v16, v3

    .line 18
    :try_start_6b
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v17, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    :goto_76
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 20
    new-instance v1, Lcom/tebakgambar/model/Level;

    invoke-direct {v1}, Lcom/tebakgambar/model/Level;-><init>()V

    move-object/from16 v18, v3

    .line 21
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/tebakgambar/model/Level;->id:I

    .line 22
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v3, 0x0

    .line 23
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    goto :goto_99

    .line 24
    :cond_93
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    .line 25
    :goto_99
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a3

    const/4 v3, 0x0

    .line 26
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    goto :goto_a9

    .line 27
    :cond_a3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    .line 28
    :goto_a9
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x0

    .line 29
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    goto :goto_b9

    .line 30
    :cond_b3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    .line 31
    :goto_b9
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_c3

    const/4 v3, 0x0

    .line 32
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    goto :goto_c9

    .line 33
    :cond_c3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    .line 34
    :goto_c9
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_d3

    const/4 v3, 0x0

    .line 35
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    goto :goto_d9

    .line 36
    :cond_d3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    .line 37
    :goto_d9
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_e3

    const/4 v3, 0x0

    .line 38
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    goto :goto_e9

    .line 39
    :cond_e3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    .line 40
    :goto_e9
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/tebakgambar/model/Level;->sliderId:I

    .line 41
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_f9

    const/4 v3, 0x0

    .line 42
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    goto :goto_ff

    .line 43
    :cond_f9
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    .line 44
    :goto_ff
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/tebakgambar/model/Level;->version:I

    .line 45
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_10f

    const/4 v3, 0x0

    .line 46
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    goto :goto_115

    .line 47
    :cond_10f
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    .line 48
    :goto_115
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_11f

    const/4 v3, 0x0

    .line 49
    iput-object v3, v1, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    goto :goto_125

    .line 50
    :cond_11f
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    .line 51
    :goto_125
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_12d

    const/4 v3, 0x0

    goto :goto_131

    .line 52
    :cond_12d
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    :goto_131
    invoke-static {v3}, Ln8/g;->e(Ljava/lang/String;)Lcom/tebakgambar/model/ComingSoon;

    move-result-object v3

    iput-object v3, v1, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    move/from16 v3, v17

    .line 54
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_144

    move/from16 v19, v0

    const/16 v17, 0x0

    goto :goto_14a

    .line 55
    :cond_144
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v19, v0

    .line 56
    :goto_14a
    invoke-static/range {v17 .. v17}, Ln8/g;->f(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, v1, Lcom/tebakgambar/model/Level;->soalRecehIds:[I

    move-object/from16 v0, v18

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_155
    .catchall {:try_start_6b .. :try_end_155} :catchall_164

    move/from16 v17, v3

    move-object v3, v0

    move/from16 v0, v19

    goto/16 :goto_76

    :cond_15c
    move-object v0, v3

    .line 58
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 59
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    return-object v0

    :catchall_164
    move-exception v0

    goto :goto_169

    :catchall_166
    move-exception v0

    move-object/from16 v16, v3

    .line 60
    :goto_169
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 61
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    .line 62
    goto :goto_171

    :goto_170
    throw v0

    :goto_171
    goto :goto_170
.end method

.method public g(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 2
    :try_start_5
    invoke-static {p0, p1}, Ln8/b;->m(Ln8/b;Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    .line 4
    iget-object p1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_13
    move-exception p1

    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 5
    throw p1
.end method

.method public h(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_a
    iget-object v0, p0, Ln8/b;->b:Lx0/g;

    invoke-virtual {v0, p1}, Lx0/g;->h(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1a

    .line 5
    iget-object p1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 6
    throw p1
.end method

.method public i(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 2
    :try_start_5
    invoke-static {p0, p1}, Ln8/b;->l(Ln8/b;Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    .line 4
    iget-object p1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_13
    move-exception p1

    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 5
    throw p1
.end method

.method public j(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Versioning;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_a
    iget-object v0, p0, Ln8/b;->c:Lx0/g;

    invoke-virtual {v0, p1}, Lx0/g;->h(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1a

    .line 5
    iget-object p1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 6
    throw p1
.end method

.method public k(Lcom/tebakgambar/model/Versioning;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_a
    iget-object v0, p0, Ln8/b;->d:Lx0/f;

    invoke-virtual {v0, p1}, Lx0/f;->h(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1a

    .line 5
    iget-object p1, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object v0, p0, Ln8/b;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 6
    throw p1
.end method

###### Class n8.b.a (n8.b$a)
.class Ln8/b$a;
.super Lx0/g;
.source "LevelDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln8/b;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/g<",
        "Lcom/tebakgambar/model/Level;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ln8/b;


# direct methods
.method constructor <init>(Ln8/b;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ln8/b$a;->d:Ln8/b;

    invoke-direct {p0, p2}, Lx0/g;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "INSERT OR REPLACE INTO `Level` (`id`,`title`,`subtitle`,`zipLevelUrl`,`iconUrl`,`frameUrl`,`achievementId`,`sliderId`,`quotes`,`version`,`color`,`backgroundColor`,`comingSoon`,`soalRecehIds`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb1/k;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/tebakgambar/model/Level;

    invoke-virtual {p0, p1, p2}, Ln8/b$a;->j(Lb1/k;Lcom/tebakgambar/model/Level;)V

    return-void
.end method

.method public j(Lb1/k;Lcom/tebakgambar/model/Level;)V
    .registers 6

    .line 1
    iget v0, p2, Lcom/tebakgambar/model/Level;->id:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lb1/i;->s1(IJ)V

    .line 2
    iget-object v0, p2, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_10

    .line 3
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_13

    .line 4
    :cond_10
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 5
    :goto_13
    iget-object v0, p2, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1c

    .line 6
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_1f

    .line 7
    :cond_1c
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 8
    :goto_1f
    iget-object v0, p2, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_28

    .line 9
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_2b

    .line 10
    :cond_28
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 11
    :goto_2b
    iget-object v0, p2, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_34

    .line 12
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_37

    .line 13
    :cond_34
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 14
    :goto_37
    iget-object v0, p2, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_40

    .line 15
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_43

    .line 16
    :cond_40
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 17
    :goto_43
    iget-object v0, p2, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_4c

    .line 18
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_4f

    .line 19
    :cond_4c
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    :goto_4f
    const/16 v0, 0x8

    .line 20
    iget v1, p2, Lcom/tebakgambar/model/Level;->sliderId:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    .line 21
    iget-object v0, p2, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    const/16 v1, 0x9

    if-nez v0, :cond_61

    .line 22
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_64

    .line 23
    :cond_61
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    :goto_64
    const/16 v0, 0xa

    .line 24
    iget v1, p2, Lcom/tebakgambar/model/Level;->version:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    .line 25
    iget-object v0, p2, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    const/16 v1, 0xb

    if-nez v0, :cond_76

    .line 26
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_79

    .line 27
    :cond_76
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 28
    :goto_79
    iget-object v0, p2, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    const/16 v1, 0xc

    if-nez v0, :cond_83

    .line 29
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_86

    .line 30
    :cond_83
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 31
    :goto_86
    iget-object v0, p2, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    invoke-static {v0}, Ln8/g;->a(Lcom/tebakgambar/model/ComingSoon;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_94

    .line 32
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_97

    .line 33
    :cond_94
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 34
    :goto_97
    iget-object p2, p2, Lcom/tebakgambar/model/Level;->soalRecehIds:[I

    invoke-static {p2}, Ln8/g;->b([I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xe

    if-nez p2, :cond_a5

    .line 35
    invoke-interface {p1, v0}, Lb1/i;->z2(I)V

    goto :goto_a8

    .line 36
    :cond_a5
    invoke-interface {p1, v0, p2}, Lb1/i;->k0(ILjava/lang/String;)V

    :goto_a8
    return-void
.end method

###### Class n8.b.C0207b (n8.b$b)
.class Ln8/b$b;
.super Lx0/g;
.source "LevelDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln8/b;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/g<",
        "Lcom/tebakgambar/model/Versioning;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ln8/b;


# direct methods
.method constructor <init>(Ln8/b;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ln8/b$b;->d:Ln8/b;

    invoke-direct {p0, p2}, Lx0/g;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "INSERT OR IGNORE INTO `Versioning` (`levelId`,`downloadedVersion`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb1/k;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/tebakgambar/model/Versioning;

    invoke-virtual {p0, p1, p2}, Ln8/b$b;->j(Lb1/k;Lcom/tebakgambar/model/Versioning;)V

    return-void
.end method

.method public j(Lb1/k;Lcom/tebakgambar/model/Versioning;)V
    .registers 6

    .line 1
    iget v0, p2, Lcom/tebakgambar/model/Versioning;->levelId:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lb1/i;->s1(IJ)V

    .line 2
    iget p2, p2, Lcom/tebakgambar/model/Versioning;->downloadedVersion:I

    int-to-long v0, p2

    const/4 p2, 0x2

    invoke-interface {p1, p2, v0, v1}, Lb1/i;->s1(IJ)V

    return-void
.end method

###### Class n8.b.c (n8.b$c)
.class Ln8/b$c;
.super Lx0/f;
.source "LevelDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln8/b;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/f<",
        "Lcom/tebakgambar/model/Versioning;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ln8/b;


# direct methods
.method constructor <init>(Ln8/b;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ln8/b$c;->d:Ln8/b;

    invoke-direct {p0, p2}, Lx0/f;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "UPDATE OR ABORT `Versioning` SET `levelId` = ?,`downloadedVersion` = ? WHERE `levelId` = ?"

    return-object v0
.end method

.method public bridge synthetic g(Lb1/k;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/tebakgambar/model/Versioning;

    invoke-virtual {p0, p1, p2}, Ln8/b$c;->i(Lb1/k;Lcom/tebakgambar/model/Versioning;)V

    return-void
.end method

.method public i(Lb1/k;Lcom/tebakgambar/model/Versioning;)V
    .registers 6

    .line 1
    iget v0, p2, Lcom/tebakgambar/model/Versioning;->levelId:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lb1/i;->s1(IJ)V

    .line 2
    iget v0, p2, Lcom/tebakgambar/model/Versioning;->downloadedVersion:I

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lb1/i;->s1(IJ)V

    .line 3
    iget p2, p2, Lcom/tebakgambar/model/Versioning;->levelId:I

    int-to-long v0, p2

    const/4 p2, 0x3

    invoke-interface {p1, p2, v0, v1}, Lb1/i;->s1(IJ)V

    return-void
.end method

###### Class n8.b.d (n8.b$d)
.class Ln8/b$d;
.super Lx0/l;
.source "LevelDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln8/b;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ln8/b;


# direct methods
.method constructor <init>(Ln8/b;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ln8/b$d;->d:Ln8/b;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "DELETE FROM Level"

    return-object v0
.end method
