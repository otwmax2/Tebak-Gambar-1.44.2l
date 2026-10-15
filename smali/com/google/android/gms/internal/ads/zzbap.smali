###### Class com.google.android.gms.internal.ads.zzbap (com.google.android.gms.internal.ads.zzbap)
.class public final Lcom/google/android/gms/internal/ads/zzbap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/os/ConditionVariable;

.field private volatile c:Z

.field volatile d:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/os/Bundle;

.field private g:Landroid/content/Context;

.field private h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->b:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->e:Landroid/content/SharedPreferences;

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->f:Landroid/os/Bundle;

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->h:Lorg/json/JSONObject;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzbap;)Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbap;->e:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private final f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzban;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzban;-><init>(Lcom/google/android/gms/internal/ads/zzbap;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbaw;->a(Lcom/google/android/gms/internal/ads/zzfok;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->h:Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->b:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->d:Z

    if-eqz v1, :cond_13

    .line 2
    monitor-exit v0

    goto :goto_1e

    .line 3
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Flags.initialize() was not called!"

    .line 4
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1b
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw p1

    :cond_1e
    :goto_1e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->c:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_33

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_29
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->c:Z

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->e:Landroid/content/SharedPreferences;

    if-nez v1, :cond_32

    goto :goto_6c

    .line 6
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_72

    :cond_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbaj;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->f:Landroid/os/Bundle;

    if-nez v0, :cond_43

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbaj;->m()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_43
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbaj;->b(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbaj;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->h:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbaj;->n()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->h:Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbaj;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_62
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbam;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbam;-><init>(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzbaj;)V

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbaw;->a(Lcom/google/android/gms/internal/ads/zzfok;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbaj;->m()Ljava/lang/Object;

    move-result-object p1

    .line 12
    monitor-exit v0

    return-object p1

    :catchall_72
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_72

    throw p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->e:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbaj;->c(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic d()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->e:Landroid/content/SharedPreferences;

    const-string v1, "flag_configuration"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroid/content/Context;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->c:Z

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->d:Z

    const/4 v2, 0x1

    if-nez v1, :cond_15

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbap;->d:Z

    .line 2
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1d

    move-object v1, p1

    goto :goto_21

    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_21
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->g:Landroid/content/Context;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_7d

    .line 3
    :try_start_23
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbap;->g:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->c(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->f:Landroid/os/Bundle;
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_37} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_37} :catch_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_7d

    :catch_37
    const/4 v1, 0x0

    .line 5
    :try_start_38
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_44

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_74

    if-eqz v3, :cond_45

    :cond_44
    move-object p1, v3

    :cond_45
    if-nez p1, :cond_50

    :try_start_47
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->d:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->b:Landroid/os/ConditionVariable;

    .line 7
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_7d

    return-void

    .line 8
    :cond_50
    :try_start_50
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->b()Lcom/google/android/gms/internal/ads/zzbal;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbal;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->e:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_5e

    .line 9
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_5e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbao;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzbao;-><init>(Lcom/google/android/gms/internal/ads/zzbap;)V

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbdc;->c(Lcom/google/android/gms/internal/ads/zzbda;)V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbap;->f()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbap;->c:Z
    :try_end_6b
    .catchall {:try_start_50 .. :try_end_6b} :catchall_74

    :try_start_6b
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->d:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->b:Landroid/os/ConditionVariable;

    .line 12
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_74
    move-exception p1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbap;->b:Landroid/os/ConditionVariable;

    .line 14
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 15
    throw p1

    :catchall_7d
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_6b .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    const-string p1, "flag_configuration"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbap;->f()V

    :cond_b
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbam (com.google.android.gms.internal.ads.zzbam)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbam;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfok;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzbap;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzbaj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzbaj;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbam;->o:Lcom/google/android/gms/internal/ads/zzbap;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbam;->p:Lcom/google/android/gms/internal/ads/zzbaj;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbam;->o:Lcom/google/android/gms/internal/ads/zzbap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbam;->p:Lcom/google/android/gms/internal/ads/zzbaj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbap;->c(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzban (com.google.android.gms.internal.ads.zzban)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzban;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfok;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzbap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzban;->o:Lcom/google/android/gms/internal/ads/zzbap;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->o:Lcom/google/android/gms/internal/ads/zzbap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbap;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
