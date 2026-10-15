###### Class r1.e (r1.e)
.class public Lr1/e;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# instance fields
.field private final a:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr1/e;->a:Landroidx/work/impl/WorkDatabase;

    return-void
.end method

.method public static b(Landroid/content/Context;Lb1/g;)V
    .registers 12

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const-string v1, "androidx.work.util.preferences"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "reschedule_needed"

    .line 2
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "last_cancel_all_time_ms"

    if-nez v3, :cond_19

    .line 3
    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    :cond_19
    const-wide/16 v5, 0x0

    .line 4
    invoke-interface {p0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 5
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_27

    const-wide/16 v5, 0x1

    .line 6
    :cond_27
    invoke-interface {p1}, Lb1/g;->V()V

    const/4 v3, 0x2

    :try_start_2b
    new-array v9, v3, [Ljava/lang/Object;

    aput-object v4, v9, v2

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v9, v7

    .line 8
    invoke-interface {p1, v0, v9}, Lb1/g;->x1(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v7

    .line 10
    invoke-interface {p1, v0, v3}, Lb1/g;->x1(Ljava/lang/String;[Ljava/lang/Object;)V

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
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_58

    .line 15
    invoke-interface {p1}, Lb1/g;->X1()V

    :cond_57
    return-void

    :catchall_58
    move-exception p0

    invoke-interface {p1}, Lb1/g;->X1()V

    .line 16
    throw p0
.end method


# virtual methods
.method public a()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lr1/e;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->H()Lq1/e;

    move-result-object v0

    const-string v1, "reschedule_needed"

    invoke-interface {v0, v1}, Lq1/e;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public c(Z)V
    .registers 4

    .line 1
    new-instance v0, Lq1/d;

    const-string v1, "reschedule_needed"

    invoke-direct {v0, v1, p1}, Lq1/d;-><init>(Ljava/lang/String;Z)V

    .line 2
    iget-object p1, p0, Lr1/e;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->H()Lq1/e;

    move-result-object p1

    invoke-interface {p1, v0}, Lq1/e;->a(Lq1/d;)V

    return-void
.end method
