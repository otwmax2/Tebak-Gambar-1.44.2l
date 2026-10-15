###### Class q1.c (q1.c)
.class public final Lq1/c;
.super Ljava/lang/Object;
.source "DependencyDao_Impl.java"

# interfaces
.implements Lq1/b;


# instance fields
.field private final a:Landroidx/room/h0;

.field private final b:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Lq1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/h0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq1/c;->a:Landroidx/room/h0;

    .line 3
    new-instance v0, Lq1/c$a;

    invoke-direct {v0, p0, p1}, Lq1/c$a;-><init>(Lq1/c;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/c;->b:Lx0/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v0

    if-nez p1, :cond_d

    .line 2
    invoke-virtual {v0, v1}, Lx0/k;->z2(I)V

    goto :goto_10

    .line 3
    :cond_d
    invoke-virtual {v0, v1, p1}, Lx0/k;->k0(ILjava/lang/String;)V

    .line 4
    :goto_10
    iget-object p1, p0, Lq1/c;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->d()V

    .line 5
    iget-object p1, p0, Lq1/c;->a:Landroidx/room/h0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    :goto_26
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 8
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_3b

    goto :goto_26

    .line 10
    :cond_34
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Lx0/k;->g()V

    return-object v1

    :catchall_3b
    move-exception v1

    .line 12
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 14
    goto :goto_44

    :goto_43
    throw v1

    :goto_44
    goto :goto_43
.end method

.method public b(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v0

    if-nez p1, :cond_d

    .line 2
    invoke-virtual {v0, v1}, Lx0/k;->z2(I)V

    goto :goto_10

    .line 3
    :cond_d
    invoke-virtual {v0, v1, p1}, Lx0/k;->k0(ILjava/lang/String;)V

    .line 4
    :goto_10
    iget-object p1, p0, Lq1/c;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->d()V

    .line 5
    iget-object p1, p0, Lq1/c;->a:Landroidx/room/h0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_1d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 7
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_33

    if-eqz v2, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    move v3, v1

    .line 8
    :cond_2c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Lx0/k;->g()V

    return v3

    :catchall_33
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 12
    throw v1
.end method

.method public c(Lq1/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq1/c;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/c;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_a
    iget-object v0, p0, Lq1/c;->b:Lx0/g;

    invoke-virtual {v0, p1}, Lx0/g;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lq1/c;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1a

    .line 5
    iget-object p1, p0, Lq1/c;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object v0, p0, Lq1/c;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 6
    throw p1
.end method

.method public d(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v0

    if-nez p1, :cond_d

    .line 2
    invoke-virtual {v0, v1}, Lx0/k;->z2(I)V

    goto :goto_10

    .line 3
    :cond_d
    invoke-virtual {v0, v1, p1}, Lx0/k;->k0(ILjava/lang/String;)V

    .line 4
    :goto_10
    iget-object p1, p0, Lq1/c;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->d()V

    .line 5
    iget-object p1, p0, Lq1/c;->a:Landroidx/room/h0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_1d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 7
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_33

    if-eqz v2, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    move v3, v1

    .line 8
    :cond_2c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Lx0/k;->g()V

    return v3

    :catchall_33
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 12
    throw v1
.end method

###### Class q1.c.a (q1.c$a)
.class Lq1/c$a;
.super Lx0/g;
.source "DependencyDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/c;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/g<",
        "Lq1/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lq1/c;


# direct methods
.method constructor <init>(Lq1/c;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/c$a;->d:Lq1/c;

    invoke-direct {p0, p2}, Lx0/g;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb1/k;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lq1/a;

    invoke-virtual {p0, p1, p2}, Lq1/c$a;->j(Lb1/k;Lq1/a;)V

    return-void
.end method

.method public j(Lb1/k;Lq1/a;)V
    .registers 5

    .line 1
    iget-object v0, p2, Lq1/a;->a:Ljava/lang/String;

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
    iget-object p2, p2, Lq1/a;->b:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p2, :cond_15

    .line 5
    invoke-interface {p1, v0}, Lb1/i;->z2(I)V

    goto :goto_18

    .line 6
    :cond_15
    invoke-interface {p1, v0, p2}, Lb1/i;->k0(ILjava/lang/String;)V

    :goto_18
    return-void
.end method
