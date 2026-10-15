###### Class q1.r (q1.r)
.class public final Lq1/r;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Lq1/q;


# instance fields
.field private final a:Landroidx/room/h0;

.field private final b:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Lq1/p;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lx0/l;

.field private final d:Lx0/l;

.field private final e:Lx0/l;

.field private final f:Lx0/l;

.field private final g:Lx0/l;

.field private final h:Lx0/l;

.field private final i:Lx0/l;

.field private final j:Lx0/l;


# direct methods
.method public constructor <init>(Landroidx/room/h0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    .line 3
    new-instance v0, Lq1/r$a;

    invoke-direct {v0, p0, p1}, Lq1/r$a;-><init>(Lq1/r;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/r;->b:Lx0/g;

    .line 4
    new-instance v0, Lq1/r$b;

    invoke-direct {v0, p0, p1}, Lq1/r$b;-><init>(Lq1/r;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/r;->c:Lx0/l;

    .line 5
    new-instance v0, Lq1/r$c;

    invoke-direct {v0, p0, p1}, Lq1/r$c;-><init>(Lq1/r;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/r;->d:Lx0/l;

    .line 6
    new-instance v0, Lq1/r$d;

    invoke-direct {v0, p0, p1}, Lq1/r$d;-><init>(Lq1/r;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/r;->e:Lx0/l;

    .line 7
    new-instance v0, Lq1/r$e;

    invoke-direct {v0, p0, p1}, Lq1/r$e;-><init>(Lq1/r;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/r;->f:Lx0/l;

    .line 8
    new-instance v0, Lq1/r$f;

    invoke-direct {v0, p0, p1}, Lq1/r$f;-><init>(Lq1/r;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/r;->g:Lx0/l;

    .line 9
    new-instance v0, Lq1/r$g;

    invoke-direct {v0, p0, p1}, Lq1/r$g;-><init>(Lq1/r;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/r;->h:Lx0/l;

    .line 10
    new-instance v0, Lq1/r$h;

    invoke-direct {v0, p0, p1}, Lq1/r$h;-><init>(Lq1/r;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/r;->i:Lx0/l;

    .line 11
    new-instance v0, Lq1/r$i;

    invoke-direct {v0, p0, p1}, Lq1/r$i;-><init>(Lq1/r;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/r;->j:Lx0/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/r;->c:Lx0/l;

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
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->e()V

    .line 6
    :try_start_1a
    invoke-interface {v0}, Lb1/k;->u0()I

    .line 7
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2d

    .line 8
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    .line 9
    iget-object p1, p0, Lq1/r;->c:Lx0/l;

    invoke-virtual {p1, v0}, Lx0/l;->f(Lb1/k;)V

    return-void

    :catchall_2d
    move-exception p1

    .line 10
    iget-object v1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 11
    iget-object v1, p0, Lq1/r;->c:Lx0/l;

    invoke-virtual {v1, v0}, Lx0/l;->f(Lb1/k;)V

    .line 12
    throw p1
.end method

.method public b(Lq1/p;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_a
    iget-object v0, p0, Lq1/r;->b:Lx0/g;

    invoke-virtual {v0, p1}, Lx0/g;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1a

    .line 5
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object v0, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 6
    throw p1
.end method

.method public c(Ljava/lang/String;J)I
    .registers 6

    .line 1
    iget-object v0, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/r;->h:Lx0/l;

    invoke-virtual {v0}, Lx0/l;->a()Lb1/k;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p2, p3}, Lb1/i;->s1(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_16

    .line 4
    invoke-interface {v0, p2}, Lb1/i;->z2(I)V

    goto :goto_19

    .line 5
    :cond_16
    invoke-interface {v0, p2, p1}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 6
    :goto_19
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->e()V

    .line 7
    :try_start_1e
    invoke-interface {v0}, Lb1/k;->u0()I

    move-result p1

    .line 8
    iget-object p2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p2}, Landroidx/room/h0;->A()V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_32

    .line 9
    iget-object p2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p2}, Landroidx/room/h0;->i()V

    .line 10
    iget-object p2, p0, Lq1/r;->h:Lx0/l;

    invoke-virtual {p2, v0}, Lx0/l;->f(Lb1/k;)V

    return p1

    :catchall_32
    move-exception p1

    .line 11
    iget-object p2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p2}, Landroidx/room/h0;->i()V

    .line 12
    iget-object p2, p0, Lq1/r;->h:Lx0/l;

    invoke-virtual {p2, v0}, Lx0/l;->f(Lb1/k;)V

    .line 13
    throw p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lq1/p$b;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

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
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->d()V

    .line 5
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_1d
    const-string v1, "id"

    .line 6
    invoke-static {p1, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    .line 7
    invoke-static {p1, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    :goto_32
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 10
    new-instance v4, Lq1/p$b;

    invoke-direct {v4}, Lq1/p$b;-><init>()V

    .line 11
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lq1/p$b;->a:Ljava/lang/String;

    .line 12
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 13
    invoke-static {v5}, Lq1/v;->g(I)Li1/s$a;

    move-result-object v5

    iput-object v5, v4, Lq1/p$b;->b:Li1/s$a;

    .line 14
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_1d .. :try_end_50} :catchall_58

    goto :goto_32

    .line 15
    :cond_51
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 16
    invoke-virtual {v0}, Lx0/k;->g()V

    return-object v3

    :catchall_58
    move-exception v1

    .line 17
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 18
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 19
    goto :goto_61

    :goto_60
    throw v1

    :goto_61
    goto :goto_60
.end method

.method public e(J)Ljava/util/List;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lq1/p;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Lx0/k;->s1(IJ)V

    .line 3
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 4
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_1b
    const-string v0, "required_network_type"

    .line 5
    invoke-static {v5, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "requires_charging"

    .line 6
    invoke-static {v5, v6}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_device_idle"

    .line 7
    invoke-static {v5, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_battery_not_low"

    .line 8
    invoke-static {v5, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "requires_storage_not_low"

    .line 9
    invoke-static {v5, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_content_update_delay"

    .line 10
    invoke-static {v5, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "trigger_max_content_delay"

    .line 11
    invoke-static {v5, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "content_uri_triggers"

    .line 12
    invoke-static {v5, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "id"

    .line 13
    invoke-static {v5, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "state"

    .line 14
    invoke-static {v5, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "worker_class_name"

    .line 15
    invoke-static {v5, v15}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input_merger_class_name"

    .line 16
    invoke-static {v5, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "input"

    .line 17
    invoke-static {v5, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "output"

    .line 18
    invoke-static {v5, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_6f
    .catchall {:try_start_1b .. :try_end_6f} :catchall_21d

    move-object/from16 v16, v3

    :try_start_71
    const-string v3, "initial_delay"

    .line 19
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 p2, v3

    const-string v3, "interval_duration"

    .line 20
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "flex_duration"

    .line 21
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "run_attempt_count"

    .line 22
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "backoff_policy"

    .line 23
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_delay_duration"

    .line 24
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "period_start_time"

    .line 25
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "minimum_retention_duration"

    .line 26
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "schedule_requested_at"

    .line 27
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "run_in_foreground"

    .line 28
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "out_of_quota_policy"

    .line 29
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v27, v1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    :goto_d4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_214

    .line 32
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v13

    .line 33
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v29, v15

    .line 34
    new-instance v15, Li1/b;

    invoke-direct {v15}, Li1/b;-><init>()V

    .line 35
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    .line 36
    invoke-static/range {v30 .. v30}, Lq1/v;->e(I)Li1/k;

    move-result-object v0

    .line 37
    invoke-virtual {v15, v0}, Li1/b;->k(Li1/k;)V

    .line 38
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_100

    const/4 v0, 0x1

    goto :goto_101

    :cond_100
    const/4 v0, 0x0

    .line 39
    :goto_101
    invoke-virtual {v15, v0}, Li1/b;->m(Z)V

    .line 40
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_10c

    const/4 v0, 0x1

    goto :goto_10d

    :cond_10c
    const/4 v0, 0x0

    .line 41
    :goto_10d
    invoke-virtual {v15, v0}, Li1/b;->n(Z)V

    .line 42
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_118

    const/4 v0, 0x1

    goto :goto_119

    :cond_118
    const/4 v0, 0x0

    .line 43
    :goto_119
    invoke-virtual {v15, v0}, Li1/b;->l(Z)V

    .line 44
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_124

    const/4 v0, 0x1

    goto :goto_125

    :cond_124
    const/4 v0, 0x0

    .line 45
    :goto_125
    invoke-virtual {v15, v0}, Li1/b;->o(Z)V

    move v0, v6

    move/from16 v30, v7

    .line 46
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 47
    invoke-virtual {v15, v6, v7}, Li1/b;->p(J)V

    .line 48
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 49
    invoke-virtual {v15, v6, v7}, Li1/b;->q(J)V

    .line 50
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 51
    invoke-static {v6}, Lq1/v;->b([B)Li1/c;

    move-result-object v6

    .line 52
    invoke-virtual {v15, v6}, Li1/b;->j(Li1/c;)V

    .line 53
    new-instance v6, Lq1/p;

    invoke-direct {v6, v1, v13}, Lq1/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 55
    invoke-static {v1}, Lq1/v;->g(I)Li1/s$a;

    move-result-object v1

    iput-object v1, v6, Lq1/p;->b:Li1/s$a;

    .line 56
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lq1/p;->d:Ljava/lang/String;

    .line 57
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 58
    invoke-static {v1}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v1

    iput-object v1, v6, Lq1/p;->e:Landroidx/work/b;

    move/from16 v1, v27

    .line 59
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 60
    invoke-static {v7}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v7

    iput-object v7, v6, Lq1/p;->f:Landroidx/work/b;

    move/from16 v7, p2

    move/from16 p2, v0

    move/from16 v27, v1

    .line 61
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lq1/p;->g:J

    move v13, v2

    move/from16 v0, v17

    .line 62
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lq1/p;->h:J

    move/from16 v17, v7

    move v2, v8

    move/from16 v1, v18

    .line 63
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lq1/p;->i:J

    move/from16 v7, v19

    .line 64
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Lq1/p;->k:I

    move/from16 v8, v20

    .line 65
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v19, v0

    .line 66
    invoke-static/range {v18 .. v18}, Lq1/v;->d(I)Li1/a;

    move-result-object v0

    iput-object v0, v6, Lq1/p;->l:Li1/a;

    move/from16 v18, v1

    move/from16 v20, v2

    move/from16 v0, v21

    .line 67
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lq1/p;->m:J

    move v2, v7

    move/from16 v21, v8

    move/from16 v1, v22

    .line 68
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lq1/p;->n:J

    move v8, v0

    move/from16 v22, v1

    move/from16 v7, v23

    .line 69
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lq1/p;->o:J

    move/from16 v23, v2

    move/from16 v0, v24

    .line 70
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lq1/p;->p:J

    move/from16 v1, v25

    .line 71
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1db

    const/4 v2, 0x1

    goto :goto_1dc

    :cond_1db
    const/4 v2, 0x0

    .line 72
    :goto_1dc
    iput-boolean v2, v6, Lq1/p;->q:Z

    move/from16 v2, v26

    .line 73
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v25, v0

    .line 74
    invoke-static/range {v24 .. v24}, Lq1/v;->f(I)Li1/n;

    move-result-object v0

    iput-object v0, v6, Lq1/p;->r:Li1/n;

    .line 75
    iput-object v15, v6, Lq1/p;->j:Li1/b;

    .line 76
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f1
    .catchall {:try_start_71 .. :try_end_1f1} :catchall_21b

    move/from16 v6, p2

    move/from16 v26, v2

    move v2, v13

    move/from16 p2, v17

    move/from16 v17, v19

    move/from16 v19, v23

    move/from16 v24, v25

    move/from16 v13, v28

    move/from16 v15, v29

    move/from16 v0, v31

    move/from16 v25, v1

    move/from16 v23, v7

    move/from16 v7, v30

    move/from16 v32, v21

    move/from16 v21, v8

    move/from16 v8, v20

    move/from16 v20, v32

    goto/16 :goto_d4

    .line 77
    :cond_214
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    return-object v3

    :catchall_21b
    move-exception v0

    goto :goto_220

    :catchall_21d
    move-exception v0

    move-object/from16 v16, v3

    .line 79
    :goto_220
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 80
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    .line 81
    goto :goto_228

    :goto_227
    throw v0

    :goto_228
    goto :goto_227
.end method

.method public f(I)Ljava/util/List;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lq1/p;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Lx0/k;->s1(IJ)V

    .line 3
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 4
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_1c
    const-string v0, "required_network_type"

    .line 5
    invoke-static {v5, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "requires_charging"

    .line 6
    invoke-static {v5, v6}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_device_idle"

    .line 7
    invoke-static {v5, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_battery_not_low"

    .line 8
    invoke-static {v5, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "requires_storage_not_low"

    .line 9
    invoke-static {v5, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_content_update_delay"

    .line 10
    invoke-static {v5, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "trigger_max_content_delay"

    .line 11
    invoke-static {v5, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "content_uri_triggers"

    .line 12
    invoke-static {v5, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "id"

    .line 13
    invoke-static {v5, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "state"

    .line 14
    invoke-static {v5, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "worker_class_name"

    .line 15
    invoke-static {v5, v15}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input_merger_class_name"

    .line 16
    invoke-static {v5, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "input"

    .line 17
    invoke-static {v5, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "output"

    .line 18
    invoke-static {v5, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_70
    .catchall {:try_start_1c .. :try_end_70} :catchall_21e

    move-object/from16 v16, v3

    :try_start_72
    const-string v3, "initial_delay"

    .line 19
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "interval_duration"

    .line 20
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "flex_duration"

    .line 21
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "run_attempt_count"

    .line 22
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_policy"

    .line 23
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "backoff_delay_duration"

    .line 24
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "period_start_time"

    .line 25
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "minimum_retention_duration"

    .line 26
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "schedule_requested_at"

    .line 27
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "run_in_foreground"

    .line 28
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "out_of_quota_policy"

    .line 29
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v28, v1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    :goto_d5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_215

    .line 32
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v29, v13

    .line 33
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v30, v15

    .line 34
    new-instance v15, Li1/b;

    invoke-direct {v15}, Li1/b;-><init>()V

    .line 35
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v32, v0

    .line 36
    invoke-static/range {v31 .. v31}, Lq1/v;->e(I)Li1/k;

    move-result-object v0

    .line 37
    invoke-virtual {v15, v0}, Li1/b;->k(Li1/k;)V

    .line 38
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_101

    const/4 v0, 0x1

    goto :goto_102

    :cond_101
    const/4 v0, 0x0

    .line 39
    :goto_102
    invoke-virtual {v15, v0}, Li1/b;->m(Z)V

    .line 40
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_10d

    const/4 v0, 0x1

    goto :goto_10e

    :cond_10d
    const/4 v0, 0x0

    .line 41
    :goto_10e
    invoke-virtual {v15, v0}, Li1/b;->n(Z)V

    .line 42
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_119

    const/4 v0, 0x1

    goto :goto_11a

    :cond_119
    const/4 v0, 0x0

    .line 43
    :goto_11a
    invoke-virtual {v15, v0}, Li1/b;->l(Z)V

    .line 44
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_125

    const/4 v0, 0x1

    goto :goto_126

    :cond_125
    const/4 v0, 0x0

    .line 45
    :goto_126
    invoke-virtual {v15, v0}, Li1/b;->o(Z)V

    move v0, v6

    move/from16 v31, v7

    .line 46
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 47
    invoke-virtual {v15, v6, v7}, Li1/b;->p(J)V

    .line 48
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 49
    invoke-virtual {v15, v6, v7}, Li1/b;->q(J)V

    .line 50
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 51
    invoke-static {v6}, Lq1/v;->b([B)Li1/c;

    move-result-object v6

    .line 52
    invoke-virtual {v15, v6}, Li1/b;->j(Li1/c;)V

    .line 53
    new-instance v6, Lq1/p;

    invoke-direct {v6, v1, v13}, Lq1/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 55
    invoke-static {v1}, Lq1/v;->g(I)Li1/s$a;

    move-result-object v1

    iput-object v1, v6, Lq1/p;->b:Li1/s$a;

    .line 56
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lq1/p;->d:Ljava/lang/String;

    .line 57
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 58
    invoke-static {v1}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v1

    iput-object v1, v6, Lq1/p;->e:Landroidx/work/b;

    move/from16 v1, v28

    .line 59
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 60
    invoke-static {v7}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v7

    iput-object v7, v6, Lq1/p;->f:Landroidx/work/b;

    move v13, v0

    move/from16 v28, v1

    move/from16 v7, v17

    .line 61
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lq1/p;->g:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 62
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lq1/p;->h:J

    move/from16 v18, v7

    move v2, v8

    move/from16 v1, v19

    .line 63
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lq1/p;->i:J

    move/from16 v7, v20

    .line 64
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Lq1/p;->k:I

    move/from16 v8, v21

    .line 65
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 66
    invoke-static/range {v19 .. v19}, Lq1/v;->d(I)Li1/a;

    move-result-object v0

    iput-object v0, v6, Lq1/p;->l:Li1/a;

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 67
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lq1/p;->m:J

    move v2, v7

    move/from16 v22, v8

    move/from16 v1, v23

    .line 68
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lq1/p;->n:J

    move v8, v0

    move/from16 v23, v1

    move/from16 v7, v24

    .line 69
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lq1/p;->o:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 70
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lq1/p;->p:J

    move/from16 v1, v26

    .line 71
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1dc

    const/4 v2, 0x1

    goto :goto_1dd

    :cond_1dc
    const/4 v2, 0x0

    .line 72
    :goto_1dd
    iput-boolean v2, v6, Lq1/p;->q:Z

    move/from16 v2, v27

    .line 73
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v26, v0

    .line 74
    invoke-static/range {v25 .. v25}, Lq1/v;->f(I)Li1/n;

    move-result-object v0

    iput-object v0, v6, Lq1/p;->r:Li1/n;

    .line 75
    iput-object v15, v6, Lq1/p;->j:Li1/b;

    .line 76
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f2
    .catchall {:try_start_72 .. :try_end_1f2} :catchall_21c

    move/from16 v27, v2

    move v6, v13

    move/from16 v2, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v24

    move/from16 v25, v26

    move/from16 v13, v29

    move/from16 v15, v30

    move/from16 v0, v32

    move/from16 v26, v1

    move/from16 v24, v7

    move/from16 v7, v31

    move/from16 v33, v22

    move/from16 v22, v8

    move/from16 v8, v21

    move/from16 v21, v33

    goto/16 :goto_d5

    .line 77
    :cond_215
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    return-object v3

    :catchall_21c
    move-exception v0

    goto :goto_221

    :catchall_21e
    move-exception v0

    move-object/from16 v16, v3

    .line 79
    :goto_221
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 80
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    .line 81
    goto :goto_229

    :goto_228
    throw v0

    :goto_229
    goto :goto_228
.end method

.method public varargs g(Li1/s$a;[Ljava/lang/String;)I
    .registers 7

    .line 1
    iget-object v0, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    invoke-static {}, Lz0/f;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UPDATE workspec SET state="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE id IN ("

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    array-length v1, p2

    .line 7
    invoke-static {v0, v1}, Lz0/f;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v1, v0}, Landroidx/room/h0;->f(Ljava/lang/String;)Lb1/k;

    move-result-object v0

    .line 11
    invoke-static {p1}, Lq1/v;->j(Li1/s$a;)I

    move-result p1

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 12
    invoke-interface {v0, p1, v1, v2}, Lb1/i;->s1(IJ)V

    .line 13
    array-length p1, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_37
    if-ge v2, p1, :cond_49

    aget-object v3, p2, v2

    if-nez v3, :cond_41

    .line 14
    invoke-interface {v0, v1}, Lb1/i;->z2(I)V

    goto :goto_44

    .line 15
    :cond_41
    invoke-interface {v0, v1, v3}, Lb1/i;->k0(ILjava/lang/String;)V

    :goto_44
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 16
    :cond_49
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->e()V

    .line 17
    :try_start_4e
    invoke-interface {v0}, Lb1/k;->u0()I

    move-result p1

    .line 18
    iget-object p2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p2}, Landroidx/room/h0;->A()V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_5d

    .line 19
    iget-object p2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p2}, Landroidx/room/h0;->i()V

    return p1

    :catchall_5d
    move-exception p1

    iget-object p2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p2}, Landroidx/room/h0;->i()V

    .line 20
    goto :goto_65

    :goto_64
    throw p1

    :goto_65
    goto :goto_64
.end method

.method public h()Ljava/util/List;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq1/p;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 3
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_15
    const-string v0, "required_network_type"

    .line 4
    invoke-static {v4, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    .line 5
    invoke-static {v4, v5}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 6
    invoke-static {v4, v6}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 7
    invoke-static {v4, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 8
    invoke-static {v4, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 9
    invoke-static {v4, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 10
    invoke-static {v4, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 11
    invoke-static {v4, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 12
    invoke-static {v4, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 13
    invoke-static {v4, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 14
    invoke-static {v4, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 15
    invoke-static {v4, v15}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    .line 16
    invoke-static {v4, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "output"

    .line 17
    invoke-static {v4, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_69
    .catchall {:try_start_15 .. :try_end_69} :catchall_219

    move-object/from16 v16, v3

    :try_start_6b
    const-string v3, "initial_delay"

    .line 18
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "interval_duration"

    .line 19
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "flex_duration"

    .line 20
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "run_attempt_count"

    .line 21
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_policy"

    .line 22
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "backoff_delay_duration"

    .line 23
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "period_start_time"

    .line 24
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "minimum_retention_duration"

    .line 25
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "schedule_requested_at"

    .line 26
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "run_in_foreground"

    .line 27
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "out_of_quota_policy"

    .line 28
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v28, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    :goto_ce
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_210

    .line 31
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v29, v12

    .line 32
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v30, v14

    .line 33
    new-instance v14, Li1/b;

    invoke-direct {v14}, Li1/b;-><init>()V

    .line 34
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v32, v0

    .line 35
    invoke-static/range {v31 .. v31}, Lq1/v;->e(I)Li1/k;

    move-result-object v0

    .line 36
    invoke-virtual {v14, v0}, Li1/b;->k(Li1/k;)V

    .line 37
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v31, 0x1

    if-eqz v0, :cond_fc

    const/4 v0, 0x1

    goto :goto_fd

    :cond_fc
    const/4 v0, 0x0

    .line 38
    :goto_fd
    invoke-virtual {v14, v0}, Li1/b;->m(Z)V

    .line 39
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_108

    const/4 v0, 0x1

    goto :goto_109

    :cond_108
    const/4 v0, 0x0

    .line 40
    :goto_109
    invoke-virtual {v14, v0}, Li1/b;->n(Z)V

    .line 41
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_114

    const/4 v0, 0x1

    goto :goto_115

    :cond_114
    const/4 v0, 0x0

    .line 42
    :goto_115
    invoke-virtual {v14, v0}, Li1/b;->l(Z)V

    .line 43
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_120

    const/4 v0, 0x1

    goto :goto_121

    :cond_120
    const/4 v0, 0x0

    .line 44
    :goto_121
    invoke-virtual {v14, v0}, Li1/b;->o(Z)V

    move v0, v5

    move/from16 v33, v6

    .line 45
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 46
    invoke-virtual {v14, v5, v6}, Li1/b;->p(J)V

    .line 47
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 48
    invoke-virtual {v14, v5, v6}, Li1/b;->q(J)V

    .line 49
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 50
    invoke-static {v5}, Lq1/v;->b([B)Li1/c;

    move-result-object v5

    .line 51
    invoke-virtual {v14, v5}, Li1/b;->j(Li1/c;)V

    .line 52
    new-instance v5, Lq1/p;

    invoke-direct {v5, v1, v12}, Lq1/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 54
    invoke-static {v1}, Lq1/v;->g(I)Li1/s$a;

    move-result-object v1

    iput-object v1, v5, Lq1/p;->b:Li1/s$a;

    .line 55
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lq1/p;->d:Ljava/lang/String;

    .line 56
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v1

    iput-object v1, v5, Lq1/p;->e:Landroidx/work/b;

    move/from16 v1, v28

    .line 58
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 59
    invoke-static {v6}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v6

    iput-object v6, v5, Lq1/p;->f:Landroidx/work/b;

    move v12, v0

    move/from16 v28, v1

    move/from16 v6, v17

    .line 60
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lq1/p;->g:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 61
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lq1/p;->h:J

    move/from16 v18, v6

    move v2, v7

    move/from16 v1, v19

    .line 62
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lq1/p;->i:J

    move/from16 v6, v20

    .line 63
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lq1/p;->k:I

    move/from16 v7, v21

    .line 64
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 65
    invoke-static/range {v19 .. v19}, Lq1/v;->d(I)Li1/a;

    move-result-object v0

    iput-object v0, v5, Lq1/p;->l:Li1/a;

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 66
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lq1/p;->m:J

    move v2, v6

    move/from16 v22, v7

    move/from16 v1, v23

    .line 67
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lq1/p;->n:J

    move v7, v0

    move/from16 v23, v1

    move/from16 v6, v24

    .line 68
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lq1/p;->o:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 69
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lq1/p;->p:J

    move/from16 v1, v26

    .line 70
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1d7

    const/4 v2, 0x1

    goto :goto_1d8

    :cond_1d7
    const/4 v2, 0x0

    .line 71
    :goto_1d8
    iput-boolean v2, v5, Lq1/p;->q:Z

    move/from16 v2, v27

    .line 72
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v26, v0

    .line 73
    invoke-static/range {v25 .. v25}, Lq1/v;->f(I)Li1/n;

    move-result-object v0

    iput-object v0, v5, Lq1/p;->r:Li1/n;

    .line 74
    iput-object v14, v5, Lq1/p;->j:Li1/b;

    .line 75
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1ed
    .catchall {:try_start_6b .. :try_end_1ed} :catchall_217

    move/from16 v27, v2

    move v5, v12

    move/from16 v2, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v24

    move/from16 v25, v26

    move/from16 v12, v29

    move/from16 v14, v30

    move/from16 v0, v32

    move/from16 v26, v1

    move/from16 v24, v6

    move/from16 v6, v33

    move/from16 v34, v22

    move/from16 v22, v7

    move/from16 v7, v21

    move/from16 v21, v34

    goto/16 :goto_ce

    .line 76
    :cond_210
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 77
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    return-object v3

    :catchall_217
    move-exception v0

    goto :goto_21c

    :catchall_219
    move-exception v0

    move-object/from16 v16, v3

    .line 78
    :goto_21c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    .line 80
    goto :goto_224

    :goto_223
    throw v0

    :goto_224
    goto :goto_223
.end method

.method public i(Ljava/lang/String;Landroidx/work/b;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/r;->d:Lx0/l;

    invoke-virtual {v0}, Lx0/l;->a()Lb1/k;

    move-result-object v0

    .line 3
    invoke-static {p2}, Landroidx/work/b;->k(Landroidx/work/b;)[B

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_16

    .line 4
    invoke-interface {v0, v1}, Lb1/i;->z2(I)V

    goto :goto_19

    .line 5
    :cond_16
    invoke-interface {v0, v1, p2}, Lb1/i;->D1(I[B)V

    :goto_19
    const/4 p2, 0x2

    if-nez p1, :cond_20

    .line 6
    invoke-interface {v0, p2}, Lb1/i;->z2(I)V

    goto :goto_23

    .line 7
    :cond_20
    invoke-interface {v0, p2, p1}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 8
    :goto_23
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->e()V

    .line 9
    :try_start_28
    invoke-interface {v0}, Lb1/k;->u0()I

    .line 10
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_3b

    .line 11
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    .line 12
    iget-object p1, p0, Lq1/r;->d:Lx0/l;

    invoke-virtual {p1, v0}, Lx0/l;->f(Lb1/k;)V

    return-void

    :catchall_3b
    move-exception p1

    .line 13
    iget-object p2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p2}, Landroidx/room/h0;->i()V

    .line 14
    iget-object p2, p0, Lq1/r;->d:Lx0/l;

    invoke-virtual {p2, v0}, Lx0/l;->f(Lb1/k;)V

    .line 15
    throw p1
.end method

.method public j()Ljava/util/List;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq1/p;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 3
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_15
    const-string v0, "required_network_type"

    .line 4
    invoke-static {v4, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    .line 5
    invoke-static {v4, v5}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 6
    invoke-static {v4, v6}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 7
    invoke-static {v4, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 8
    invoke-static {v4, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 9
    invoke-static {v4, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 10
    invoke-static {v4, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 11
    invoke-static {v4, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 12
    invoke-static {v4, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 13
    invoke-static {v4, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 14
    invoke-static {v4, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 15
    invoke-static {v4, v15}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    .line 16
    invoke-static {v4, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "output"

    .line 17
    invoke-static {v4, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_69
    .catchall {:try_start_15 .. :try_end_69} :catchall_219

    move-object/from16 v16, v3

    :try_start_6b
    const-string v3, "initial_delay"

    .line 18
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "interval_duration"

    .line 19
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "flex_duration"

    .line 20
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "run_attempt_count"

    .line 21
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_policy"

    .line 22
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "backoff_delay_duration"

    .line 23
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "period_start_time"

    .line 24
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "minimum_retention_duration"

    .line 25
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "schedule_requested_at"

    .line 26
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "run_in_foreground"

    .line 27
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "out_of_quota_policy"

    .line 28
    invoke-static {v4, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v28, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    :goto_ce
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_210

    .line 31
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v29, v12

    .line 32
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v30, v14

    .line 33
    new-instance v14, Li1/b;

    invoke-direct {v14}, Li1/b;-><init>()V

    .line 34
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v32, v0

    .line 35
    invoke-static/range {v31 .. v31}, Lq1/v;->e(I)Li1/k;

    move-result-object v0

    .line 36
    invoke-virtual {v14, v0}, Li1/b;->k(Li1/k;)V

    .line 37
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v31, 0x1

    if-eqz v0, :cond_fc

    const/4 v0, 0x1

    goto :goto_fd

    :cond_fc
    const/4 v0, 0x0

    .line 38
    :goto_fd
    invoke-virtual {v14, v0}, Li1/b;->m(Z)V

    .line 39
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_108

    const/4 v0, 0x1

    goto :goto_109

    :cond_108
    const/4 v0, 0x0

    .line 40
    :goto_109
    invoke-virtual {v14, v0}, Li1/b;->n(Z)V

    .line 41
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_114

    const/4 v0, 0x1

    goto :goto_115

    :cond_114
    const/4 v0, 0x0

    .line 42
    :goto_115
    invoke-virtual {v14, v0}, Li1/b;->l(Z)V

    .line 43
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_120

    const/4 v0, 0x1

    goto :goto_121

    :cond_120
    const/4 v0, 0x0

    .line 44
    :goto_121
    invoke-virtual {v14, v0}, Li1/b;->o(Z)V

    move v0, v5

    move/from16 v33, v6

    .line 45
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 46
    invoke-virtual {v14, v5, v6}, Li1/b;->p(J)V

    .line 47
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 48
    invoke-virtual {v14, v5, v6}, Li1/b;->q(J)V

    .line 49
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 50
    invoke-static {v5}, Lq1/v;->b([B)Li1/c;

    move-result-object v5

    .line 51
    invoke-virtual {v14, v5}, Li1/b;->j(Li1/c;)V

    .line 52
    new-instance v5, Lq1/p;

    invoke-direct {v5, v1, v12}, Lq1/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 54
    invoke-static {v1}, Lq1/v;->g(I)Li1/s$a;

    move-result-object v1

    iput-object v1, v5, Lq1/p;->b:Li1/s$a;

    .line 55
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lq1/p;->d:Ljava/lang/String;

    .line 56
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v1

    iput-object v1, v5, Lq1/p;->e:Landroidx/work/b;

    move/from16 v1, v28

    .line 58
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 59
    invoke-static {v6}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v6

    iput-object v6, v5, Lq1/p;->f:Landroidx/work/b;

    move v12, v0

    move/from16 v28, v1

    move/from16 v6, v17

    .line 60
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lq1/p;->g:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 61
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lq1/p;->h:J

    move/from16 v18, v6

    move v2, v7

    move/from16 v1, v19

    .line 62
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lq1/p;->i:J

    move/from16 v6, v20

    .line 63
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lq1/p;->k:I

    move/from16 v7, v21

    .line 64
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 65
    invoke-static/range {v19 .. v19}, Lq1/v;->d(I)Li1/a;

    move-result-object v0

    iput-object v0, v5, Lq1/p;->l:Li1/a;

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 66
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lq1/p;->m:J

    move v2, v6

    move/from16 v22, v7

    move/from16 v1, v23

    .line 67
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lq1/p;->n:J

    move v7, v0

    move/from16 v23, v1

    move/from16 v6, v24

    .line 68
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lq1/p;->o:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 69
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lq1/p;->p:J

    move/from16 v1, v26

    .line 70
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1d7

    const/4 v2, 0x1

    goto :goto_1d8

    :cond_1d7
    const/4 v2, 0x0

    .line 71
    :goto_1d8
    iput-boolean v2, v5, Lq1/p;->q:Z

    move/from16 v2, v27

    .line 72
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v26, v0

    .line 73
    invoke-static/range {v25 .. v25}, Lq1/v;->f(I)Li1/n;

    move-result-object v0

    iput-object v0, v5, Lq1/p;->r:Li1/n;

    .line 74
    iput-object v14, v5, Lq1/p;->j:Li1/b;

    .line 75
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1ed
    .catchall {:try_start_6b .. :try_end_1ed} :catchall_217

    move/from16 v27, v2

    move v5, v12

    move/from16 v2, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v24

    move/from16 v25, v26

    move/from16 v12, v29

    move/from16 v14, v30

    move/from16 v0, v32

    move/from16 v26, v1

    move/from16 v24, v6

    move/from16 v6, v33

    move/from16 v34, v22

    move/from16 v22, v7

    move/from16 v7, v21

    move/from16 v21, v34

    goto/16 :goto_ce

    .line 76
    :cond_210
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 77
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    return-object v3

    :catchall_217
    move-exception v0

    goto :goto_21c

    :catchall_219
    move-exception v0

    move-object/from16 v16, v3

    .line 78
    :goto_21c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    .line 80
    goto :goto_224

    :goto_223
    throw v0

    :goto_224
    goto :goto_223
.end method

.method public k()Z
    .registers 5

    const-string v0, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v2}, Landroidx/room/h0;->d()V

    .line 3
    iget-object v2, p0, Lq1/r;->a:Landroidx/room/h0;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 4
    :try_start_13
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 5
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_27

    if-eqz v3, :cond_20

    const/4 v1, 0x1

    .line 6
    :cond_20
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 7
    invoke-virtual {v0}, Lx0/k;->g()V

    return v1

    :catchall_27
    move-exception v1

    .line 8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 10
    throw v1
.end method

.method public l(Ljava/lang/String;)Ljava/util/List;
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

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

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
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->d()V

    .line 5
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

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

.method public m(Ljava/lang/String;)Li1/s$a;
    .registers 6

    const-string v0, "SELECT state FROM workspec WHERE id=?"

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
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->d()V

    .line 5
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_1d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 8
    invoke-static {v1}, Lq1/v;->g(I)Li1/s$a;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_32

    .line 9
    :cond_2b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Lx0/k;->g()V

    return-object v2

    :catchall_32
    move-exception v1

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 13
    throw v1
.end method

.method public n(Ljava/lang/String;)Lq1/p;
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?"

    const/4 v3, 0x1

    .line 1
    invoke-static {v2, v3}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v2

    if-nez v0, :cond_11

    .line 2
    invoke-virtual {v2, v3}, Lx0/k;->z2(I)V

    goto :goto_14

    .line 3
    :cond_11
    invoke-virtual {v2, v3, v0}, Lx0/k;->k0(ILjava/lang/String;)V

    .line 4
    :goto_14
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 5
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_21
    const-string v0, "required_network_type"

    .line 6
    invoke-static {v6, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "requires_charging"

    .line 7
    invoke-static {v6, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_device_idle"

    .line 8
    invoke-static {v6, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "requires_battery_not_low"

    .line 9
    invoke-static {v6, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "requires_storage_not_low"

    .line 10
    invoke-static {v6, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "trigger_content_update_delay"

    .line 11
    invoke-static {v6, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "trigger_max_content_delay"

    .line 12
    invoke-static {v6, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "content_uri_triggers"

    .line 13
    invoke-static {v6, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "id"

    .line 14
    invoke-static {v6, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "state"

    .line 15
    invoke-static {v6, v15}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "worker_class_name"

    .line 16
    invoke-static {v6, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "input_merger_class_name"

    .line 17
    invoke-static {v6, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "input"

    .line 18
    invoke-static {v6, v5}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "output"

    .line 19
    invoke-static {v6, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_75
    .catchall {:try_start_21 .. :try_end_75} :catchall_1d2

    move-object/from16 v16, v2

    :try_start_77
    const-string v2, "initial_delay"

    .line 20
    invoke-static {v6, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "interval_duration"

    .line 21
    invoke-static {v6, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "flex_duration"

    .line 22
    invoke-static {v6, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "run_attempt_count"

    .line 23
    invoke-static {v6, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_policy"

    .line 24
    invoke-static {v6, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "backoff_delay_duration"

    .line 25
    invoke-static {v6, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "period_start_time"

    .line 26
    invoke-static {v6, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "minimum_retention_duration"

    .line 27
    invoke-static {v6, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "schedule_requested_at"

    .line 28
    invoke-static {v6, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "run_in_foreground"

    .line 29
    invoke-static {v6, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "out_of_quota_policy"

    .line 30
    invoke-static {v6, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 31
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v27

    if-eqz v27, :cond_1c8

    .line 32
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 33
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v27, v2

    .line 34
    new-instance v2, Li1/b;

    invoke-direct {v2}, Li1/b;-><init>()V

    .line 35
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 36
    invoke-static {v0}, Lq1/v;->e(I)Li1/k;

    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Li1/b;->k(Li1/k;)V

    .line 38
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_f5

    const/4 v0, 0x1

    goto :goto_f6

    :cond_f5
    const/4 v0, 0x0

    .line 39
    :goto_f6
    invoke-virtual {v2, v0}, Li1/b;->m(Z)V

    .line 40
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_101

    const/4 v0, 0x1

    goto :goto_102

    :cond_101
    const/4 v0, 0x0

    .line 41
    :goto_102
    invoke-virtual {v2, v0}, Li1/b;->n(Z)V

    .line 42
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_10d

    const/4 v0, 0x1

    goto :goto_10e

    :cond_10d
    const/4 v0, 0x0

    .line 43
    :goto_10e
    invoke-virtual {v2, v0}, Li1/b;->l(Z)V

    .line 44
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_119

    const/4 v0, 0x1

    goto :goto_11a

    :cond_119
    const/4 v0, 0x0

    .line 45
    :goto_11a
    invoke-virtual {v2, v0}, Li1/b;->o(Z)V

    .line 46
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 47
    invoke-virtual {v2, v7, v8}, Li1/b;->p(J)V

    .line 48
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 49
    invoke-virtual {v2, v7, v8}, Li1/b;->q(J)V

    .line 50
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 51
    invoke-static {v0}, Lq1/v;->b([B)Li1/c;

    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Li1/b;->j(Li1/c;)V

    .line 53
    new-instance v0, Lq1/p;

    invoke-direct {v0, v14, v3}, Lq1/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 55
    invoke-static {v3}, Lq1/v;->g(I)Li1/s$a;

    move-result-object v3

    iput-object v3, v0, Lq1/p;->b:Li1/s$a;

    .line 56
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lq1/p;->d:Ljava/lang/String;

    .line 57
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 58
    invoke-static {v3}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v3

    iput-object v3, v0, Lq1/p;->e:Landroidx/work/b;

    .line 59
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v1

    iput-object v1, v0, Lq1/p;->f:Landroidx/work/b;

    move/from16 v1, v17

    .line 61
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lq1/p;->g:J

    move/from16 v1, v18

    .line 62
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lq1/p;->h:J

    move/from16 v1, v19

    .line 63
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lq1/p;->i:J

    move/from16 v1, v20

    .line 64
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lq1/p;->k:I

    move/from16 v1, v21

    .line 65
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 66
    invoke-static {v1}, Lq1/v;->d(I)Li1/a;

    move-result-object v1

    iput-object v1, v0, Lq1/p;->l:Li1/a;

    move/from16 v1, v22

    .line 67
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lq1/p;->m:J

    move/from16 v1, v23

    .line 68
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lq1/p;->n:J

    move/from16 v1, v24

    .line 69
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lq1/p;->o:J

    move/from16 v1, v25

    .line 70
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lq1/p;->p:J

    move/from16 v1, v26

    .line 71
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1b5

    const/4 v3, 0x1

    goto :goto_1b6

    :cond_1b5
    const/4 v3, 0x0

    .line 72
    :goto_1b6
    iput-boolean v3, v0, Lq1/p;->q:Z

    move/from16 v1, v27

    .line 73
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 74
    invoke-static {v1}, Lq1/v;->f(I)Li1/n;

    move-result-object v1

    iput-object v1, v0, Lq1/p;->r:Li1/n;

    .line 75
    iput-object v2, v0, Lq1/p;->j:Li1/b;
    :try_end_1c6
    .catchall {:try_start_77 .. :try_end_1c6} :catchall_1d0

    move-object v5, v0

    goto :goto_1c9

    :cond_1c8
    const/4 v5, 0x0

    .line 76
    :goto_1c9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 77
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    return-object v5

    :catchall_1d0
    move-exception v0

    goto :goto_1d5

    :catchall_1d2
    move-exception v0

    move-object/from16 v16, v2

    .line 78
    :goto_1d5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    .line 80
    throw v0
.end method

.method public o(Ljava/lang/String;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/r;->g:Lx0/l;

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
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->e()V

    .line 6
    :try_start_1a
    invoke-interface {v0}, Lb1/k;->u0()I

    move-result p1

    .line 7
    iget-object v1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->A()V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2e

    .line 8
    iget-object v1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 9
    iget-object v1, p0, Lq1/r;->g:Lx0/l;

    invoke-virtual {v1, v0}, Lx0/l;->f(Lb1/k;)V

    return p1

    :catchall_2e
    move-exception p1

    .line 10
    iget-object v1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 11
    iget-object v1, p0, Lq1/r;->g:Lx0/l;

    invoke-virtual {v1, v0}, Lx0/l;->f(Lb1/k;)V

    .line 12
    throw p1
.end method

.method public p(Ljava/lang/String;)Ljava/util/List;
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

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

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
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->d()V

    .line 5
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

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

.method public q(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/b;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

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
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->d()V

    .line 5
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

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

    if-eqz v3, :cond_38

    .line 8
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v3

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_3f

    goto :goto_26

    .line 11
    :cond_38
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Lx0/k;->g()V

    return-object v1

    :catchall_3f
    move-exception v1

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 14
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 15
    goto :goto_48

    :goto_47
    throw v1

    :goto_48
    goto :goto_47
.end method

.method public r(Ljava/lang/String;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/r;->f:Lx0/l;

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
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->e()V

    .line 6
    :try_start_1a
    invoke-interface {v0}, Lb1/k;->u0()I

    move-result p1

    .line 7
    iget-object v1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->A()V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2e

    .line 8
    iget-object v1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 9
    iget-object v1, p0, Lq1/r;->f:Lx0/l;

    invoke-virtual {v1, v0}, Lx0/l;->f(Lb1/k;)V

    return p1

    :catchall_2e
    move-exception p1

    .line 10
    iget-object v1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 11
    iget-object v1, p0, Lq1/r;->f:Lx0/l;

    invoke-virtual {v1, v0}, Lx0/l;->f(Lb1/k;)V

    .line 12
    throw p1
.end method

.method public s(Ljava/lang/String;J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/r;->e:Lx0/l;

    invoke-virtual {v0}, Lx0/l;->a()Lb1/k;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p2, p3}, Lb1/i;->s1(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_16

    .line 4
    invoke-interface {v0, p2}, Lb1/i;->z2(I)V

    goto :goto_19

    .line 5
    :cond_16
    invoke-interface {v0, p2, p1}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 6
    :goto_19
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->e()V

    .line 7
    :try_start_1e
    invoke-interface {v0}, Lb1/k;->u0()I

    .line 8
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_31

    .line 9
    iget-object p1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    .line 10
    iget-object p1, p0, Lq1/r;->e:Lx0/l;

    invoke-virtual {p1, v0}, Lx0/l;->f(Lb1/k;)V

    return-void

    :catchall_31
    move-exception p1

    .line 11
    iget-object p2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {p2}, Landroidx/room/h0;->i()V

    .line 12
    iget-object p2, p0, Lq1/r;->e:Lx0/l;

    invoke-virtual {p2, v0}, Lx0/l;->f(Lb1/k;)V

    .line 13
    throw p1
.end method

.method public t(I)Ljava/util/List;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lq1/p;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Lx0/k;->s1(IJ)V

    .line 3
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 4
    iget-object v0, v1, Lq1/r;->a:Landroidx/room/h0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_1c
    const-string v0, "required_network_type"

    .line 5
    invoke-static {v5, v0}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "requires_charging"

    .line 6
    invoke-static {v5, v6}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_device_idle"

    .line 7
    invoke-static {v5, v7}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_battery_not_low"

    .line 8
    invoke-static {v5, v8}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "requires_storage_not_low"

    .line 9
    invoke-static {v5, v9}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_content_update_delay"

    .line 10
    invoke-static {v5, v10}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "trigger_max_content_delay"

    .line 11
    invoke-static {v5, v11}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "content_uri_triggers"

    .line 12
    invoke-static {v5, v12}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "id"

    .line 13
    invoke-static {v5, v13}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "state"

    .line 14
    invoke-static {v5, v14}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "worker_class_name"

    .line 15
    invoke-static {v5, v15}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input_merger_class_name"

    .line 16
    invoke-static {v5, v2}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "input"

    .line 17
    invoke-static {v5, v4}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "output"

    .line 18
    invoke-static {v5, v1}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_70
    .catchall {:try_start_1c .. :try_end_70} :catchall_21e

    move-object/from16 v16, v3

    :try_start_72
    const-string v3, "initial_delay"

    .line 19
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "interval_duration"

    .line 20
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "flex_duration"

    .line 21
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "run_attempt_count"

    .line 22
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_policy"

    .line 23
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "backoff_delay_duration"

    .line 24
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "period_start_time"

    .line 25
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "minimum_retention_duration"

    .line 26
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "schedule_requested_at"

    .line 27
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "run_in_foreground"

    .line 28
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "out_of_quota_policy"

    .line 29
    invoke-static {v5, v3}, Lz0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v28, v1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    :goto_d5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_215

    .line 32
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v29, v13

    .line 33
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v30, v15

    .line 34
    new-instance v15, Li1/b;

    invoke-direct {v15}, Li1/b;-><init>()V

    .line 35
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v32, v0

    .line 36
    invoke-static/range {v31 .. v31}, Lq1/v;->e(I)Li1/k;

    move-result-object v0

    .line 37
    invoke-virtual {v15, v0}, Li1/b;->k(Li1/k;)V

    .line 38
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_101

    const/4 v0, 0x1

    goto :goto_102

    :cond_101
    const/4 v0, 0x0

    .line 39
    :goto_102
    invoke-virtual {v15, v0}, Li1/b;->m(Z)V

    .line 40
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_10d

    const/4 v0, 0x1

    goto :goto_10e

    :cond_10d
    const/4 v0, 0x0

    .line 41
    :goto_10e
    invoke-virtual {v15, v0}, Li1/b;->n(Z)V

    .line 42
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_119

    const/4 v0, 0x1

    goto :goto_11a

    :cond_119
    const/4 v0, 0x0

    .line 43
    :goto_11a
    invoke-virtual {v15, v0}, Li1/b;->l(Z)V

    .line 44
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_125

    const/4 v0, 0x1

    goto :goto_126

    :cond_125
    const/4 v0, 0x0

    .line 45
    :goto_126
    invoke-virtual {v15, v0}, Li1/b;->o(Z)V

    move v0, v6

    move/from16 v31, v7

    .line 46
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 47
    invoke-virtual {v15, v6, v7}, Li1/b;->p(J)V

    .line 48
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 49
    invoke-virtual {v15, v6, v7}, Li1/b;->q(J)V

    .line 50
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 51
    invoke-static {v6}, Lq1/v;->b([B)Li1/c;

    move-result-object v6

    .line 52
    invoke-virtual {v15, v6}, Li1/b;->j(Li1/c;)V

    .line 53
    new-instance v6, Lq1/p;

    invoke-direct {v6, v1, v13}, Lq1/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 55
    invoke-static {v1}, Lq1/v;->g(I)Li1/s$a;

    move-result-object v1

    iput-object v1, v6, Lq1/p;->b:Li1/s$a;

    .line 56
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lq1/p;->d:Ljava/lang/String;

    .line 57
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 58
    invoke-static {v1}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v1

    iput-object v1, v6, Lq1/p;->e:Landroidx/work/b;

    move/from16 v1, v28

    .line 59
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 60
    invoke-static {v7}, Landroidx/work/b;->g([B)Landroidx/work/b;

    move-result-object v7

    iput-object v7, v6, Lq1/p;->f:Landroidx/work/b;

    move v13, v0

    move/from16 v28, v1

    move/from16 v7, v17

    .line 61
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lq1/p;->g:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 62
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lq1/p;->h:J

    move/from16 v18, v7

    move v2, v8

    move/from16 v1, v19

    .line 63
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lq1/p;->i:J

    move/from16 v7, v20

    .line 64
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Lq1/p;->k:I

    move/from16 v8, v21

    .line 65
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 66
    invoke-static/range {v19 .. v19}, Lq1/v;->d(I)Li1/a;

    move-result-object v0

    iput-object v0, v6, Lq1/p;->l:Li1/a;

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 67
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lq1/p;->m:J

    move v2, v7

    move/from16 v22, v8

    move/from16 v1, v23

    .line 68
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lq1/p;->n:J

    move v8, v0

    move/from16 v23, v1

    move/from16 v7, v24

    .line 69
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lq1/p;->o:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 70
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lq1/p;->p:J

    move/from16 v1, v26

    .line 71
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1dc

    const/4 v2, 0x1

    goto :goto_1dd

    :cond_1dc
    const/4 v2, 0x0

    .line 72
    :goto_1dd
    iput-boolean v2, v6, Lq1/p;->q:Z

    move/from16 v2, v27

    .line 73
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v26, v0

    .line 74
    invoke-static/range {v25 .. v25}, Lq1/v;->f(I)Li1/n;

    move-result-object v0

    iput-object v0, v6, Lq1/p;->r:Li1/n;

    .line 75
    iput-object v15, v6, Lq1/p;->j:Li1/b;

    .line 76
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f2
    .catchall {:try_start_72 .. :try_end_1f2} :catchall_21c

    move/from16 v27, v2

    move v6, v13

    move/from16 v2, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v24

    move/from16 v25, v26

    move/from16 v13, v29

    move/from16 v15, v30

    move/from16 v0, v32

    move/from16 v26, v1

    move/from16 v24, v7

    move/from16 v7, v31

    move/from16 v33, v22

    move/from16 v22, v8

    move/from16 v8, v21

    move/from16 v21, v33

    goto/16 :goto_d5

    .line 77
    :cond_215
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    return-object v3

    :catchall_21c
    move-exception v0

    goto :goto_221

    :catchall_21e
    move-exception v0

    move-object/from16 v16, v3

    .line 79
    :goto_221
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 80
    invoke-virtual/range {v16 .. v16}, Lx0/k;->g()V

    .line 81
    goto :goto_229

    :goto_228
    throw v0

    :goto_229
    goto :goto_228
.end method

.method public u()I
    .registers 4

    .line 1
    iget-object v0, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/r;->i:Lx0/l;

    invoke-virtual {v0}, Lx0/l;->a()Lb1/k;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->e()V

    .line 4
    :try_start_10
    invoke-interface {v0}, Lb1/k;->u0()I

    move-result v1

    .line 5
    iget-object v2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v2}, Landroidx/room/h0;->A()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_24

    .line 6
    iget-object v2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v2}, Landroidx/room/h0;->i()V

    .line 7
    iget-object v2, p0, Lq1/r;->i:Lx0/l;

    invoke-virtual {v2, v0}, Lx0/l;->f(Lb1/k;)V

    return v1

    :catchall_24
    move-exception v1

    .line 8
    iget-object v2, p0, Lq1/r;->a:Landroidx/room/h0;

    invoke-virtual {v2}, Landroidx/room/h0;->i()V

    .line 9
    iget-object v2, p0, Lq1/r;->i:Lx0/l;

    invoke-virtual {v2, v0}, Lx0/l;->f(Lb1/k;)V

    .line 10
    throw v1
.end method

###### Class q1.r.a (q1.r$a)
.class Lq1/r$a;
.super Lx0/g;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/r;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/g<",
        "Lq1/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lq1/r;


# direct methods
.method constructor <init>(Lq1/r;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/r$a;->d:Lq1/r;

    invoke-direct {p0, p2}, Lx0/g;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb1/k;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lq1/p;

    invoke-virtual {p0, p1, p2}, Lq1/r$a;->j(Lb1/k;Lq1/p;)V

    return-void
.end method

.method public j(Lb1/k;Lq1/p;)V
    .registers 13

    .line 1
    iget-object v0, p2, Lq1/p;->a:Ljava/lang/String;

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
    iget-object v0, p2, Lq1/p;->b:Li1/s$a;

    invoke-static {v0}, Lq1/v;->j(Li1/s$a;)I

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    .line 5
    invoke-interface {p1, v1, v2, v3}, Lb1/i;->s1(IJ)V

    .line 6
    iget-object v0, p2, Lq1/p;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_20

    .line 7
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_23

    .line 8
    :cond_20
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 9
    :goto_23
    iget-object v0, p2, Lq1/p;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2c

    .line 10
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_2f

    .line 11
    :cond_2c
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 12
    :goto_2f
    iget-object v0, p2, Lq1/p;->e:Landroidx/work/b;

    invoke-static {v0}, Landroidx/work/b;->k(Landroidx/work/b;)[B

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3c

    .line 13
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_3f

    .line 14
    :cond_3c
    invoke-interface {p1, v1, v0}, Lb1/i;->D1(I[B)V

    .line 15
    :goto_3f
    iget-object v0, p2, Lq1/p;->f:Landroidx/work/b;

    invoke-static {v0}, Landroidx/work/b;->k(Landroidx/work/b;)[B

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4c

    .line 16
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_4f

    .line 17
    :cond_4c
    invoke-interface {p1, v1, v0}, Lb1/i;->D1(I[B)V

    :goto_4f
    const/4 v0, 0x7

    .line 18
    iget-wide v1, p2, Lq1/p;->g:J

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    const/16 v0, 0x8

    .line 19
    iget-wide v1, p2, Lq1/p;->h:J

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    const/16 v0, 0x9

    .line 20
    iget-wide v1, p2, Lq1/p;->i:J

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    const/16 v0, 0xa

    .line 21
    iget v1, p2, Lq1/p;->k:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    .line 22
    iget-object v0, p2, Lq1/p;->l:Li1/a;

    invoke-static {v0}, Lq1/v;->a(Li1/a;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 23
    invoke-interface {p1, v1, v2, v3}, Lb1/i;->s1(IJ)V

    const/16 v0, 0xc

    .line 24
    iget-wide v1, p2, Lq1/p;->m:J

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    const/16 v0, 0xd

    .line 25
    iget-wide v1, p2, Lq1/p;->n:J

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    const/16 v0, 0xe

    .line 26
    iget-wide v1, p2, Lq1/p;->o:J

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    const/16 v0, 0xf

    .line 27
    iget-wide v1, p2, Lq1/p;->p:J

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    .line 28
    iget-boolean v0, p2, Lq1/p;->q:Z

    const/16 v1, 0x10

    int-to-long v2, v0

    .line 29
    invoke-interface {p1, v1, v2, v3}, Lb1/i;->s1(IJ)V

    .line 30
    iget-object v0, p2, Lq1/p;->r:Li1/n;

    invoke-static {v0}, Lq1/v;->i(Li1/n;)I

    move-result v0

    const/16 v1, 0x11

    int-to-long v2, v0

    .line 31
    invoke-interface {p1, v1, v2, v3}, Lb1/i;->s1(IJ)V

    .line 32
    iget-object p2, p2, Lq1/p;->j:Li1/b;

    const/16 v0, 0x18

    const/16 v1, 0x17

    const/16 v2, 0x16

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v5, 0x13

    const/16 v6, 0x12

    const/16 v7, 0x19

    if-eqz p2, :cond_107

    .line 33
    invoke-virtual {p2}, Li1/b;->b()Li1/k;

    move-result-object v8

    invoke-static {v8}, Lq1/v;->h(Li1/k;)I

    move-result v8

    int-to-long v8, v8

    .line 34
    invoke-interface {p1, v6, v8, v9}, Lb1/i;->s1(IJ)V

    .line 35
    invoke-virtual {p2}, Li1/b;->g()Z

    move-result v6

    int-to-long v8, v6

    .line 36
    invoke-interface {p1, v5, v8, v9}, Lb1/i;->s1(IJ)V

    .line 37
    invoke-virtual {p2}, Li1/b;->h()Z

    move-result v5

    int-to-long v5, v5

    .line 38
    invoke-interface {p1, v4, v5, v6}, Lb1/i;->s1(IJ)V

    .line 39
    invoke-virtual {p2}, Li1/b;->f()Z

    move-result v4

    int-to-long v4, v4

    .line 40
    invoke-interface {p1, v3, v4, v5}, Lb1/i;->s1(IJ)V

    .line 41
    invoke-virtual {p2}, Li1/b;->i()Z

    move-result v3

    int-to-long v3, v3

    .line 42
    invoke-interface {p1, v2, v3, v4}, Lb1/i;->s1(IJ)V

    .line 43
    invoke-virtual {p2}, Li1/b;->c()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lb1/i;->s1(IJ)V

    .line 44
    invoke-virtual {p2}, Li1/b;->d()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    .line 45
    invoke-virtual {p2}, Li1/b;->a()Li1/c;

    move-result-object p2

    invoke-static {p2}, Lq1/v;->c(Li1/c;)[B

    move-result-object p2

    if-nez p2, :cond_103

    .line 46
    invoke-interface {p1, v7}, Lb1/i;->z2(I)V

    goto :goto_11f

    .line 47
    :cond_103
    invoke-interface {p1, v7, p2}, Lb1/i;->D1(I[B)V

    goto :goto_11f

    .line 48
    :cond_107
    invoke-interface {p1, v6}, Lb1/i;->z2(I)V

    .line 49
    invoke-interface {p1, v5}, Lb1/i;->z2(I)V

    .line 50
    invoke-interface {p1, v4}, Lb1/i;->z2(I)V

    .line 51
    invoke-interface {p1, v3}, Lb1/i;->z2(I)V

    .line 52
    invoke-interface {p1, v2}, Lb1/i;->z2(I)V

    .line 53
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    .line 54
    invoke-interface {p1, v0}, Lb1/i;->z2(I)V

    .line 55
    invoke-interface {p1, v7}, Lb1/i;->z2(I)V

    :goto_11f
    return-void
.end method

###### Class q1.r.b (q1.r$b)
.class Lq1/r$b;
.super Lx0/l;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/r;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lq1/r;


# direct methods
.method constructor <init>(Lq1/r;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/r$b;->d:Lq1/r;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "DELETE FROM workspec WHERE id=?"

    return-object v0
.end method

###### Class q1.r.c (q1.r$c)
.class Lq1/r$c;
.super Lx0/l;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/r;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lq1/r;


# direct methods
.method constructor <init>(Lq1/r;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/r$c;->d:Lq1/r;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "UPDATE workspec SET output=? WHERE id=?"

    return-object v0
.end method

###### Class q1.r.d (q1.r$d)
.class Lq1/r$d;
.super Lx0/l;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/r;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lq1/r;


# direct methods
.method constructor <init>(Lq1/r;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/r$d;->d:Lq1/r;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "UPDATE workspec SET period_start_time=? WHERE id=?"

    return-object v0
.end method

###### Class q1.r.e (q1.r$e)
.class Lq1/r$e;
.super Lx0/l;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/r;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lq1/r;


# direct methods
.method constructor <init>(Lq1/r;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/r$e;->d:Lq1/r;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    return-object v0
.end method

###### Class q1.r.f (q1.r$f)
.class Lq1/r$f;
.super Lx0/l;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/r;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lq1/r;


# direct methods
.method constructor <init>(Lq1/r;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/r$f;->d:Lq1/r;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    return-object v0
.end method

###### Class q1.r.g (q1.r$g)
.class Lq1/r$g;
.super Lx0/l;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/r;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lq1/r;


# direct methods
.method constructor <init>(Lq1/r;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/r$g;->d:Lq1/r;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    return-object v0
.end method

###### Class q1.r.h (q1.r$h)
.class Lq1/r$h;
.super Lx0/l;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/r;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lq1/r;


# direct methods
.method constructor <init>(Lq1/r;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/r$h;->d:Lq1/r;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    return-object v0
.end method

###### Class q1.r.i (q1.r$i)
.class Lq1/r$i;
.super Lx0/l;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/r;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lq1/r;


# direct methods
.method constructor <init>(Lq1/r;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/r$i;->d:Lq1/r;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    return-object v0
.end method
