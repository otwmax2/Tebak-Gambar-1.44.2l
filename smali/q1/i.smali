###### Class q1.i (q1.i)
.class public final Lq1/i;
.super Ljava/lang/Object;
.source "SystemIdInfoDao_Impl.java"

# interfaces
.implements Lq1/h;


# instance fields
.field private final a:Landroidx/room/h0;

.field private final b:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Lq1/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lx0/l;


# direct methods
.method public constructor <init>(Landroidx/room/h0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq1/i;->a:Landroidx/room/h0;

    .line 3
    new-instance v0, Lq1/i$a;

    invoke-direct {v0, p0, p1}, Lq1/i$a;-><init>(Lq1/i;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/i;->b:Lx0/g;

    .line 4
    new-instance v0, Lq1/i$b;

    invoke-direct {v0, p0, p1}, Lq1/i$b;-><init>(Lq1/i;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/i;->c:Lx0/l;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {v2}, Landroidx/room/h0;->d()V

    .line 3
    iget-object v2, p0, Lq1/i;->a:Landroidx/room/h0;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 4
    :try_start_13
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    :goto_1c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 6
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_31

    goto :goto_1c

    .line 8
    :cond_2a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Lx0/k;->g()V

    return-object v3

    :catchall_31
    move-exception v1

    .line 10
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 12
    goto :goto_3a

    :goto_39
    throw v1

    :goto_3a
    goto :goto_39
.end method

.method public b(Lq1/g;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_a
    iget-object v0, p0, Lq1/i;->b:Lx0/g;

    invoke-virtual {v0, p1}, Lx0/g;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1a

    .line 5
    iget-object p1, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object v0, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 6
    throw p1
.end method

.method public c(Ljava/lang/String;)Lq1/g;
    .registers 7

    const-string v0, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?"

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
    iget-object p1, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->d()V

    .line 5
    iget-object p1, p0, Lq1/i;->a:Landroidx/room/h0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_1d
    const-string v1, "work_spec_id"

    .line 6
    invoke-static {p1, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "system_id"

    .line 7
    invoke-static {p1, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 11
    new-instance v3, Lq1/g;

    invoke-direct {v3, v1, v2}, Lq1/g;-><init>(Ljava/lang/String;I)V
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_44

    move-object v2, v3

    .line 12
    :cond_3d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v0}, Lx0/k;->g()V

    return-object v2

    :catchall_44
    move-exception v1

    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 15
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 16
    throw v1
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/i;->c:Lx0/l;

    invoke-virtual {v0}, Lx0/l;->a()Lb1/k;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_12

    .line 3
    invoke-interface {v0, v1}, Lb1/i;->z2(I)V

    goto :goto_15

    .line 4
    :cond_12
    invoke-interface {v0, v1, p1}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 5
    :goto_15
    iget-object p1, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->e()V

    .line 6
    :try_start_1a
    invoke-interface {v0}, Lb1/k;->u0()I

    .line 7
    iget-object p1, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2d

    .line 8
    iget-object p1, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    .line 9
    iget-object p1, p0, Lq1/i;->c:Lx0/l;

    invoke-virtual {p1, v0}, Lx0/l;->f(Lb1/k;)V

    return-void

    :catchall_2d
    move-exception p1

    .line 10
    iget-object v1, p0, Lq1/i;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 11
    iget-object v1, p0, Lq1/i;->c:Lx0/l;

    invoke-virtual {v1, v0}, Lx0/l;->f(Lb1/k;)V

    .line 12
    throw p1
.end method

###### Class q1.i.a (q1.i$a)
.class Lq1/i$a;
.super Lx0/g;
.source "SystemIdInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/i;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/g<",
        "Lq1/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lq1/i;


# direct methods
.method constructor <init>(Lq1/i;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/i$a;->d:Lq1/i;

    invoke-direct {p0, p2}, Lx0/g;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb1/k;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lq1/g;

    invoke-virtual {p0, p1, p2}, Lq1/i$a;->j(Lb1/k;Lq1/g;)V

    return-void
.end method

.method public j(Lb1/k;Lq1/g;)V
    .registers 6

    .line 1
    iget-object v0, p2, Lq1/g;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 2
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_c

    .line 3
    :cond_9
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    :goto_c
    const/4 v0, 0x2

    .line 4
    iget p2, p2, Lq1/g;->b:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    return-void
.end method

###### Class q1.i.b (q1.i$b)
.class Lq1/i$b;
.super Lx0/l;
.source "SystemIdInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/i;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lq1/i;


# direct methods
.method constructor <init>(Lq1/i;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/i$b;->d:Lq1/i;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    return-object v0
.end method
