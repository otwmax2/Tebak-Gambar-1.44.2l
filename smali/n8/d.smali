###### Class n8.d (n8.d)
.class public final Ln8/d;
.super Ln8/c;
.source "SliderDao_Impl.java"


# instance fields
.field private final a:Landroidx/room/h0;

.field private final b:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Lcom/tebakgambar/model/Slider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/h0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ln8/c;-><init>()V

    .line 2
    iput-object p1, p0, Ln8/d;->a:Landroidx/room/h0;

    .line 3
    new-instance v0, Ln8/d$a;

    invoke-direct {v0, p0, p1}, Ln8/d$a;-><init>(Ln8/d;Landroidx/room/h0;)V

    iput-object v0, p0, Ln8/d;->b:Lx0/g;

    return-void
.end method

.method public static e()Ljava/util/List;
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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Slider;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM Slider"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v0

    .line 2
    iget-object v2, p0, Ln8/d;->a:Landroidx/room/h0;

    invoke-virtual {v2}, Landroidx/room/h0;->d()V

    .line 3
    iget-object v2, p0, Ln8/d;->a:Landroidx/room/h0;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_13
    const-string v2, "id"

    .line 4
    invoke-static {v1, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "type"

    .line 5
    invoke-static {v1, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "images"

    .line 6
    invoke-static {v1, v5}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :goto_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_64

    .line 9
    new-instance v7, Lcom/tebakgambar/model/Slider;

    invoke-direct {v7}, Lcom/tebakgambar/model/Slider;-><init>()V

    .line 10
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/tebakgambar/model/Slider;->id:I

    .line 11
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 12
    iput-object v3, v7, Lcom/tebakgambar/model/Slider;->type:Ljava/lang/String;

    goto :goto_4e

    .line 13
    :cond_48
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tebakgambar/model/Slider;->type:Ljava/lang/String;

    .line 14
    :goto_4e
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_56

    move-object v8, v3

    goto :goto_5a

    .line 15
    :cond_56
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 16
    :goto_5a
    invoke-static {v8}, Ln8/g;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v7, Lcom/tebakgambar/model/Slider;->images:Ljava/util/List;

    .line 17
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_13 .. :try_end_63} :catchall_6b

    goto :goto_2e

    .line 18
    :cond_64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v0}, Lx0/k;->g()V

    return-object v6

    :catchall_6b
    move-exception v2

    .line 20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 22
    goto :goto_74

    :goto_73
    throw v2

    :goto_74
    goto :goto_73
.end method

.method public b()Lcom/tebakgambar/model/Slider;
    .registers 8

    const-string v0, "SELECT * FROM Slider where type = \"soalreceh\" LIMIT 1"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v0

    .line 2
    iget-object v2, p0, Ln8/d;->a:Landroidx/room/h0;

    invoke-virtual {v2}, Landroidx/room/h0;->d()V

    .line 3
    iget-object v2, p0, Ln8/d;->a:Landroidx/room/h0;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_13
    const-string v2, "id"

    .line 4
    invoke-static {v1, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "type"

    .line 5
    invoke-static {v1, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "images"

    .line 6
    invoke-static {v1, v5}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 8
    new-instance v6, Lcom/tebakgambar/model/Slider;

    invoke-direct {v6}, Lcom/tebakgambar/model/Slider;-><init>()V

    .line 9
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v6, Lcom/tebakgambar/model/Slider;->id:I

    .line 10
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 11
    iput-object v3, v6, Lcom/tebakgambar/model/Slider;->type:Ljava/lang/String;

    goto :goto_45

    .line 12
    :cond_3f
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/tebakgambar/model/Slider;->type:Ljava/lang/String;

    .line 13
    :goto_45
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_50

    .line 14
    :cond_4c
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 15
    :goto_50
    invoke-static {v3}, Ln8/g;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v6, Lcom/tebakgambar/model/Slider;->images:Ljava/util/List;
    :try_end_56
    .catchall {:try_start_13 .. :try_end_56} :catchall_5e

    move-object v3, v6

    .line 16
    :cond_57
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 17
    invoke-virtual {v0}, Lx0/k;->g()V

    return-object v3

    :catchall_5e
    move-exception v2

    .line 18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 20
    throw v2
.end method

.method public c(I)Lcom/tebakgambar/model/Slider;
    .registers 8

    const-string v0, "SELECT * FROM Slider where id = ? LIMIT 1"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lx0/k;->s1(IJ)V

    .line 3
    iget-object p1, p0, Ln8/d;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->d()V

    .line 4
    iget-object p1, p0, Ln8/d;->a:Landroidx/room/h0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_18
    const-string v1, "id"

    .line 5
    invoke-static {p1, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "type"

    .line 6
    invoke-static {p1, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "images"

    .line 7
    invoke-static {p1, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 9
    new-instance v5, Lcom/tebakgambar/model/Slider;

    invoke-direct {v5}, Lcom/tebakgambar/model/Slider;-><init>()V

    .line 10
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v5, Lcom/tebakgambar/model/Slider;->id:I

    .line 11
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 12
    iput-object v2, v5, Lcom/tebakgambar/model/Slider;->type:Ljava/lang/String;

    goto :goto_4a

    .line 13
    :cond_44
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tebakgambar/model/Slider;->type:Ljava/lang/String;

    .line 14
    :goto_4a
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_51

    goto :goto_55

    .line 15
    :cond_51
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    :goto_55
    invoke-static {v2}, Ln8/g;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v5, Lcom/tebakgambar/model/Slider;->images:Ljava/util/List;
    :try_end_5b
    .catchall {:try_start_18 .. :try_end_5b} :catchall_63

    move-object v2, v5

    .line 17
    :cond_5c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 18
    invoke-virtual {v0}, Lx0/k;->g()V

    return-object v2

    :catchall_63
    move-exception v1

    .line 19
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 20
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 21
    throw v1
.end method

.method public d(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Slider;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln8/d;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Ln8/d;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_a
    iget-object v0, p0, Ln8/d;->b:Lx0/g;

    invoke-virtual {v0, p1}, Lx0/g;->h(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Ln8/d;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1a

    .line 5
    iget-object p1, p0, Ln8/d;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object v0, p0, Ln8/d;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 6
    throw p1
.end method

###### Class n8.d.a (n8.d$a)
.class Ln8/d$a;
.super Lx0/g;
.source "SliderDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln8/d;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/g<",
        "Lcom/tebakgambar/model/Slider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ln8/d;


# direct methods
.method constructor <init>(Ln8/d;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ln8/d$a;->d:Ln8/d;

    invoke-direct {p0, p2}, Lx0/g;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "INSERT OR REPLACE INTO `Slider` (`id`,`type`,`images`) VALUES (?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb1/k;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/tebakgambar/model/Slider;

    invoke-virtual {p0, p1, p2}, Ln8/d$a;->j(Lb1/k;Lcom/tebakgambar/model/Slider;)V

    return-void
.end method

.method public j(Lb1/k;Lcom/tebakgambar/model/Slider;)V
    .registers 6

    .line 1
    iget v0, p2, Lcom/tebakgambar/model/Slider;->id:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lb1/i;->s1(IJ)V

    .line 2
    iget-object v0, p2, Lcom/tebakgambar/model/Slider;->type:Ljava/lang/String;

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
    iget-object p2, p2, Lcom/tebakgambar/model/Slider;->images:Ljava/util/List;

    invoke-static {p2}, Ln8/g;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    if-nez p2, :cond_20

    .line 6
    invoke-interface {p1, v0}, Lb1/i;->z2(I)V

    goto :goto_23

    .line 7
    :cond_20
    invoke-interface {p1, v0, p2}, Lb1/i;->k0(ILjava/lang/String;)V

    :goto_23
    return-void
.end method
