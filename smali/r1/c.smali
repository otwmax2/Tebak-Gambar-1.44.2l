###### Class r1.c (r1.c)
.class public Lr1/c;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# instance fields
.field private final a:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr1/c;->a:Landroidx/work/impl/WorkDatabase;

    return-void
.end method

.method public static a(Landroid/content/Context;Lb1/g;)V
    .registers 10

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const-string v1, "androidx.work.util.id"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "next_job_scheduler_id"

    .line 2
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 3
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 4
    :cond_17
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "next_alarm_manager_id"

    .line 5
    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 6
    invoke-interface {p1}, Lb1/g;->V()V

    const/4 v6, 0x2

    :try_start_25
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v1, v7, v2

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v7, v3

    .line 8
    invoke-interface {p1, v0, v7}, Lb1/g;->x1(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v4, v1, v2

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 10
    invoke-interface {p1, v0, v1}, Lb1/g;->x1(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    invoke-interface {p1}, Lb1/g;->u1()V
    :try_end_4e
    .catchall {:try_start_25 .. :try_end_4e} :catchall_52

    .line 15
    invoke-interface {p1}, Lb1/g;->X1()V

    :cond_51
    return-void

    :catchall_52
    move-exception p0

    invoke-interface {p1}, Lb1/g;->X1()V

    .line 16
    throw p0
.end method

.method private c(Ljava/lang/String;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lr1/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 2
    :try_start_5
    iget-object v0, p0, Lr1/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->H()Lq1/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lq1/e;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1e

    goto :goto_20

    :cond_1e
    add-int/lit8 v1, v0, 0x1

    .line 4
    :goto_20
    invoke-direct {p0, p1, v1}, Lr1/c;->e(Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lr1/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2e

    .line 6
    iget-object p1, p0, Lr1/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return v0

    :catchall_2e
    move-exception p1

    iget-object v0, p0, Lr1/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 7
    throw p1
.end method

.method private e(Ljava/lang/String;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lr1/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->H()Lq1/e;

    move-result-object v0

    new-instance v1, Lq1/d;

    int-to-long v2, p2

    invoke-direct {v1, p1, v2, v3}, Lq1/d;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Lq1/e;->a(Lq1/d;)V

    return-void
.end method


# virtual methods
.method public b()I
    .registers 3

    .line 1
    const-class v0, Lr1/c;

    monitor-enter v0

    :try_start_3
    const-string v1, "next_alarm_manager_id"

    .line 2
    invoke-direct {p0, v1}, Lr1/c;->c(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public d(II)I
    .registers 5

    .line 1
    const-class v0, Lr1/c;

    monitor-enter v0

    :try_start_3
    const-string v1, "next_job_scheduler_id"

    .line 2
    invoke-direct {p0, v1}, Lr1/c;->c(Ljava/lang/String;)I

    move-result v1

    if-lt v1, p1, :cond_10

    if-le v1, p2, :cond_e

    goto :goto_10

    :cond_e
    move p1, v1

    goto :goto_17

    :cond_10
    :goto_10
    const-string p2, "next_job_scheduler_id"

    add-int/lit8 v1, p1, 0x1

    .line 3
    invoke-direct {p0, p2, v1}, Lr1/c;->e(Ljava/lang/String;I)V

    .line 4
    :goto_17
    monitor-exit v0

    return p1

    :catchall_19
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method
