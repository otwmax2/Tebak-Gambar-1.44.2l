###### Class com.google.firebase.analytics.connector.internal.b (com.google.firebase.analytics.connector.internal.b)
.class public final Lcom/google/firebase/analytics/connector/internal/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@20.1.2"


# static fields
.field private static final a:Ljava/util/Set;

.field private static final b:Ljava/util/List;

.field private static final c:Ljava/util/List;

.field private static final d:Ljava/util/List;

.field private static final e:Ljava/util/List;

.field private static final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "_in"

    const-string v2, "_xa"

    const-string v3, "_xu"

    const-string v4, "_aq"

    const-string v5, "_aa"

    const-string v6, "_ai"

    const-string v7, "_ac"

    const-string v8, "campaign_details"

    const-string v9, "_ug"

    const-string v10, "_iapx"

    const-string v11, "_exp_set"

    const-string v12, "_exp_clear"

    const-string v13, "_exp_activate"

    const-string v14, "_exp_timeout"

    const-string v15, "_exp_expire"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->a:Ljava/util/Set;

    const-string v2, "_e"

    const-string v3, "_f"

    const-string v4, "_iap"

    const-string v5, "_s"

    const-string v6, "_au"

    const-string v7, "_ui"

    const-string v8, "_cd"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->b:Ljava/util/List;

    const-string v0, "auto"

    const-string v1, "app"

    const-string v2, "am"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->c:Ljava/util/List;

    const-string v0, "_r"

    const-string v1, "_dbg"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->d:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzhh;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzhh;->b:[Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/util/ArrayUtils;->a([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->e:Ljava/util/List;

    const-string v0, "^_ltv_[A-Z]{3}$"

    const-string v1, "^_cc[1-5]{1}$"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->f:Ljava/util/List;

    return-void
.end method

.method public static a(Le5/a$c;)Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le5/a$c;->a:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v2, "origin"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_e
    iget-object v1, p0, Le5/a$c;->b:Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v2, "name"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_17
    iget-object v1, p0, Le5/a$c;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1e

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhe;->b(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 8
    :cond_1e
    iget-object v1, p0, Le5/a$c;->d:Ljava/lang/String;

    if-eqz v1, :cond_27

    const-string v2, "trigger_event_name"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_27
    iget-wide v1, p0, Le5/a$c;->e:J

    const-string v3, "trigger_timeout"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 11
    iget-object v1, p0, Le5/a$c;->f:Ljava/lang/String;

    if-eqz v1, :cond_37

    const-string v2, "timed_out_event_name"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_37
    iget-object v1, p0, Le5/a$c;->g:Landroid/os/Bundle;

    if-eqz v1, :cond_40

    const-string v2, "timed_out_event_params"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    :cond_40
    iget-object v1, p0, Le5/a$c;->h:Ljava/lang/String;

    if-eqz v1, :cond_49

    const-string v2, "triggered_event_name"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_49
    iget-object v1, p0, Le5/a$c;->i:Landroid/os/Bundle;

    if-eqz v1, :cond_52

    const-string v2, "triggered_event_params"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    :cond_52
    iget-wide v1, p0, Le5/a$c;->j:J

    const-string v3, "time_to_live"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 20
    iget-object v1, p0, Le5/a$c;->k:Ljava/lang/String;

    if-eqz v1, :cond_62

    const-string v2, "expired_event_name"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_62
    iget-object v1, p0, Le5/a$c;->l:Landroid/os/Bundle;

    if-eqz v1, :cond_6b

    const-string v2, "expired_event_params"

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    :cond_6b
    iget-wide v1, p0, Le5/a$c;->m:J

    const-string v3, "creation_timestamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 25
    iget-boolean v1, p0, Le5/a$c;->n:Z

    const-string v2, "active"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    iget-wide v1, p0, Le5/a$c;->o:J

    const-string p0, "triggered_timestamp"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static b(Landroid/os/Bundle;)Le5/a$c;
    .registers 8

    .line 1
    const-class v0, Ljava/lang/Long;

    const-class v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Le5/a$c;

    invoke-direct {v2}, Le5/a$c;-><init>()V

    const-string v3, "origin"

    const/4 v4, 0x0

    .line 3
    invoke-static {p0, v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Le5/a$c;->a:Ljava/lang/String;

    const-string v3, "name"

    .line 5
    invoke-static {p0, v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Le5/a$c;->b:Ljava/lang/String;

    const-class v3, Ljava/lang/Object;

    const-string v5, "value"

    .line 7
    invoke-static {p0, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Le5/a$c;->c:Ljava/lang/Object;

    const-string v3, "trigger_event_name"

    .line 8
    invoke-static {p0, v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Le5/a$c;->d:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "trigger_timeout"

    .line 10
    invoke-static {p0, v5, v0, v3}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v2, Le5/a$c;->e:J

    const-string v5, "timed_out_event_name"

    .line 11
    invoke-static {p0, v5, v1, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Le5/a$c;->f:Ljava/lang/String;

    const-class v5, Landroid/os/Bundle;

    const-string v6, "timed_out_event_params"

    .line 12
    invoke-static {p0, v6, v5, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    iput-object v5, v2, Le5/a$c;->g:Landroid/os/Bundle;

    const-string v5, "triggered_event_name"

    .line 13
    invoke-static {p0, v5, v1, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Le5/a$c;->h:Ljava/lang/String;

    const-class v5, Landroid/os/Bundle;

    const-string v6, "triggered_event_params"

    .line 14
    invoke-static {p0, v6, v5, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    iput-object v5, v2, Le5/a$c;->i:Landroid/os/Bundle;

    const-string v5, "time_to_live"

    .line 15
    invoke-static {p0, v5, v0, v3}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v2, Le5/a$c;->j:J

    const-string v5, "expired_event_name"

    .line 16
    invoke-static {p0, v5, v1, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Le5/a$c;->k:Ljava/lang/String;

    const-class v1, Landroid/os/Bundle;

    const-string v5, "expired_event_params"

    .line 17
    invoke-static {p0, v5, v1, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v2, Le5/a$c;->l:Landroid/os/Bundle;

    const-class v1, Ljava/lang/Boolean;

    .line 18
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "active"

    .line 19
    invoke-static {p0, v5, v1, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Le5/a$c;->n:Z

    const-string v1, "creation_timestamp"

    .line 20
    invoke-static {p0, v1, v0, v3}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Le5/a$c;->m:J

    const-string v1, "triggered_timestamp"

    .line 21
    invoke-static {p0, v1, v0, v3}, Lcom/google/android/gms/measurement/internal/zzhe;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Le5/a$c;->o:J

    return-object v2
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "clx"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "_ae"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-wide/16 p0, 0x1

    const-string v0, "_r"

    .line 3
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_17
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7

    const-string v0, "_cmp"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_a

    return v0

    .line 2
    :cond_a
    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/b;->i(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_12

    return v1

    :cond_12
    if-nez p2, :cond_15

    return v1

    :cond_15
    sget-object p1, Lcom/google/firebase/analytics/connector/internal/b;->d:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v1

    .line 5
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v2, 0x18b50

    const/4 v3, 0x2

    if-eq p1, v2, :cond_57

    const v2, 0x18b6e

    if-eq p1, v2, :cond_4d

    const v2, 0x2ff42f

    if-eq p1, v2, :cond_43

    goto :goto_61

    :cond_43
    const-string p1, "fiam"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    const/4 p0, 0x2

    goto :goto_62

    :cond_4d
    const-string p1, "fdl"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    const/4 p0, 0x1

    goto :goto_62

    :cond_57
    const-string p1, "fcm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    const/4 p0, 0x0

    goto :goto_62

    :cond_61
    :goto_61
    const/4 p0, -0x1

    :goto_62
    const-string p1, "_cis"

    if-eqz p0, :cond_77

    if-eq p0, v0, :cond_71

    if-eq p0, v3, :cond_6b

    return v1

    :cond_6b
    const-string p0, "fiam_integration"

    .line 6
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_71
    const-string p0, "fdl_integration"

    .line 7
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_77
    const-string p0, "fcm_integration"

    .line 8
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static f(Le5/a$c;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    iget-object v1, p0, Le5/a$c;->a:Ljava/lang/String;

    if-eqz v1, :cond_77

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_77

    .line 3
    :cond_f
    iget-object v2, p0, Le5/a$c;->c:Ljava/lang/Object;

    if-eqz v2, :cond_1b

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzit;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1a

    goto :goto_1b

    :cond_1a
    return v0

    .line 4
    :cond_1b
    :goto_1b
    invoke-static {v1}, Lcom/google/firebase/analytics/connector/internal/b;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    return v0

    .line 5
    :cond_22
    iget-object v2, p0, Le5/a$c;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/firebase/analytics/connector/internal/b;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v0

    .line 6
    :cond_2b
    iget-object v2, p0, Le5/a$c;->k:Ljava/lang/String;

    if-eqz v2, :cond_44

    .line 7
    iget-object v3, p0, Le5/a$c;->l:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/b;->g(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_38

    return v0

    .line 8
    :cond_38
    iget-object v2, p0, Le5/a$c;->k:Ljava/lang/String;

    iget-object v3, p0, Le5/a$c;->l:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/google/firebase/analytics/connector/internal/b;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_44

    :cond_43
    return v0

    .line 9
    :cond_44
    :goto_44
    iget-object v2, p0, Le5/a$c;->h:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 10
    iget-object v3, p0, Le5/a$c;->i:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/b;->g(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_51

    return v0

    .line 11
    :cond_51
    iget-object v2, p0, Le5/a$c;->h:Ljava/lang/String;

    iget-object v3, p0, Le5/a$c;->i:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/google/firebase/analytics/connector/internal/b;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_5d

    :cond_5c
    return v0

    .line 12
    :cond_5d
    :goto_5d
    iget-object v2, p0, Le5/a$c;->f:Ljava/lang/String;

    if-eqz v2, :cond_75

    .line 13
    iget-object v3, p0, Le5/a$c;->g:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/b;->g(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_6a

    return v0

    .line 14
    :cond_6a
    iget-object v2, p0, Le5/a$c;->f:Ljava/lang/String;

    iget-object p0, p0, Le5/a$c;->g:Landroid/os/Bundle;

    invoke-static {v1, v2, p0}, Lcom/google/firebase/analytics/connector/internal/b;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_75

    return v0

    :cond_75
    const/4 p0, 0x1

    return p0

    :cond_77
    :goto_77
    return v0
.end method

.method public static g(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/b;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    if-eqz p1, :cond_25

    sget-object p0, Lcom/google/firebase/analytics/connector/internal/b;->d:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    :cond_25
    const/4 p0, 0x1

    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/b;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/b;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "_ce1"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "fcm"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_51

    const-string v0, "_ce2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_51

    :cond_15
    const-string v0, "_ln"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    const-string p1, "fiam"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    return v3

    :cond_2d
    :goto_2d
    return v2

    :cond_2e
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/b;->e:Ljava/util/List;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    return v3

    :cond_37
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/b;->f:Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    return v3

    :cond_50
    return v2

    .line 7
    :cond_51
    :goto_51
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    const-string p1, "frc"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    goto :goto_61

    :cond_60
    return v3

    :cond_61
    :goto_61
    return v2
.end method
