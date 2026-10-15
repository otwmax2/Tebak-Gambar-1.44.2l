###### Class com.google.android.gms.internal.ads.zzbhz (com.google.android.gms.internal.ads.zzbhz)
.class public final Lcom/google/android/gms/internal/ads/zzbhz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/zzb;

.field private final b:Lcom/google/android/gms/internal/ads/zzdpi;

.field private final c:Lcom/google/android/gms/internal/ads/zzfdk;

.field private final d:Lcom/google/android/gms/internal/ads/zzbzf;

.field private final e:Lcom/google/android/gms/internal/ads/zzbpz;

.field private final f:Lcom/google/android/gms/internal/ads/zzeaf;

.field private g:Lcom/google/android/gms/ads/internal/overlay/zzx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbpz;Lcom/google/android/gms/internal/ads/zzeaf;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzfdk;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhz;->g:Lcom/google/android/gms/ads/internal/overlay/zzx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhz;->a:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhz;->e:Lcom/google/android/gms/internal/ads/zzbpz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbhz;->b:Lcom/google/android/gms/internal/ads/zzdpi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhz;->c:Lcom/google/android/gms/internal/ads/zzfdk;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbzf;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzbzf;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhz;->d:Lcom/google/android/gms/internal/ads/zzbzf;

    return-void
.end method

.method public static b(Ljava/util/Map;)I
    .registers 2

    const-string v0, "o"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_29

    const-string v0, "p"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x7

    return p0

    :cond_14
    const-string v0, "l"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x6

    return p0

    :cond_1e
    const-string v0, "c"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/16 p0, 0xe

    return p0

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method static c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_3

    return-object p2

    .line 1
    :cond_3
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzapw;->e(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzapw;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzapx; {:try_start_3 .. :try_end_d} :catch_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_18

    :catch_e
    move-exception p0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p1

    const-string p3, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_18
    :cond_18
    :goto_18
    return-object p2
.end method

.method static d(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    :try_start_0
    const-string v0, "aclk_ms"

    .line 1
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aclk_upms"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception v0

    .line 6
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error adding click uptime parameter to url: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    return-object p0
.end method

.method public static f(Ljava/util/Map;)Z
    .registers 2

    const-string v0, "custom_close"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/internal/ads/zzbhz;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhz;->k(I)V

    return-void
.end method

.method private final h(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;Z)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 1
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzbhz;->i(Z)V

    .line 2
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcei;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcei;->T()Lcom/google/android/gms/internal/ads/zzapw;

    move-result-object v6

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object v7

    const-string v8, "activity"

    .line 4
    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    const-string v9, "u"

    .line 5
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_32

    goto/16 :goto_134

    .line 7
    :cond_32
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 8
    invoke-static {v5, v6, v9, v7, v11}, Lcom/google/android/gms/internal/ads/zzbhz;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v9

    .line 9
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzbhz;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "use_first_package"

    .line 10
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v12, "use_running_process"

    .line 11
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "use_custom_tabs"

    .line 12
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_78

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->b4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_77

    goto :goto_78

    :cond_77
    const/4 v3, 0x0

    .line 15
    :cond_78
    :goto_78
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v14, "http"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v15, "https"

    if-eqz v2, :cond_93

    .line 16
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    goto :goto_a9

    .line 17
    :cond_93
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 18
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 19
    :cond_a9
    :goto_a9
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-static {v9, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbhy;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v9

    .line 22
    invoke-static {v11, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbhy;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    if-eqz v3, :cond_c4

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v5, v9}, Lcom/google/android/gms/ads/internal/util/zzs;->L(Landroid/content/Context;Landroid/content/Intent;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v5, v11}, Lcom/google/android/gms/ads/internal/util/zzs;->L(Landroid/content/Context;Landroid/content/Intent;)V

    .line 25
    :cond_c4
    invoke-static {v9, v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbhy;->d(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/view/View;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_cf

    .line 26
    invoke-static {v9, v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbhy;->b(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_134

    :cond_cf
    if-eqz v11, :cond_e1

    .line 27
    invoke-static {v11, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbhy;->c(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/view/View;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_e1

    .line 28
    invoke-static {v9, v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbhy;->b(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    .line 29
    invoke-static {v11, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbhy;->c(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/view/View;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_134

    .line 30
    :cond_e1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e8

    goto :goto_133

    :cond_e8
    if-eqz v12, :cond_125

    if-eqz v8, :cond_125

    .line 31
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_125

    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_f7
    if-ge v11, v8, :cond_125

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 33
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 34
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_103
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    add-int/lit8 v16, v11, 0x1

    if-eqz v15, :cond_122

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 35
    iget-object v15, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_103

    .line 36
    invoke-static {v9, v12, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbhy;->b(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_134

    :cond_122
    move/from16 v11, v16

    goto :goto_f7

    :cond_125
    if-eqz v10, :cond_133

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-static {v9, v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbhy;->b(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_134

    :cond_133
    :goto_133
    move-object v11, v9

    :cond_134
    :goto_134
    if-eqz p3, :cond_152

    .line 38
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    if-eqz v2, :cond_152

    if-eqz v11, :cond_152

    .line 39
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p4

    .line 40
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbhz;->j(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_151

    goto :goto_152

    :cond_151
    return-void

    .line 41
    :cond_152
    :goto_152
    :try_start_152
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfn;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbhz;->g:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-direct {v2, v11, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzx;)V

    move/from16 v3, p5

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfn;->E0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V
    :try_end_160
    .catch Landroid/content/ActivityNotFoundException; {:try_start_152 .. :try_end_160} :catch_161

    return-void

    :catch_161
    move-exception v0

    .line 42
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void
.end method

.method private final i(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhz;->e:Lcom/google/android/gms/internal/ads/zzbpz;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbpz;->h(Z)V

    :cond_7
    return-void
.end method

.method private final j(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v15, p4

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbhz;->b:Lcom/google/android/gms/internal/ads/zzdpi;

    if-eqz v2, :cond_17

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbhz;->c:Lcom/google/android/gms/internal/ads/zzfdk;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    const-string v6, "offline_open"

    move-object/from16 v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzean;->Ta(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzfdk;Lcom/google/android/gms/internal/ads/zzeaf;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzbyj;->x(Landroid/content/Context;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbhz;->d:Lcom/google/android/gms/internal/ads/zzbzf;

    .line 3
    invoke-virtual {v1, v2, v15}, Lcom/google/android/gms/internal/ads/zzeaf;->i(Lcom/google/android/gms/internal/ads/zzbzf;Ljava/lang/String;)V

    return v8

    .line 4
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/util/zzs;->U(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzbr;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 6
    invoke-static/range {p2 .. p2}, Landroidx/core/app/o;->b(Landroid/content/Context;)Landroidx/core/app/o;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/app/o;->a()Z

    move-result v2

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->s()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v3

    const-string v4, "offline_notification_channel"

    .line 8
    invoke-virtual {v3, v7, v4}, Lcom/google/android/gms/ads/internal/util/zzaa;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 9
    move-object/from16 v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcei;

    .line 10
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcfx;->i()Z

    move-result v5

    const/16 v16, 0x1

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcei;->g()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_5e

    const/4 v5, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v5, 0x0

    :goto_5f
    if-eqz v2, :cond_c4

    if-nez v3, :cond_c4

    if-eqz v1, :cond_c4

    if-nez v5, :cond_c4

    .line 11
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbar;->K7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v6

    .line 13
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7a

    goto :goto_c4

    .line 14
    :cond_7a
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcfx;->i()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 15
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcei;->g()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzbhz;->b:Lcom/google/android/gms/internal/ads/zzdpi;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbhz;->c:Lcom/google/android/gms/internal/ads/zzfdk;

    move-object v10, v1

    move-object/from16 v14, p4

    move-object v6, v15

    move-object/from16 v15, p3

    .line 16
    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzean;->Va(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zzl;Lcom/google/android/gms/ads/internal/util/zzbr;Lcom/google/android/gms/internal/ads/zzeaf;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzfdk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ae

    :cond_99
    move-object v6, v15

    .line 17
    move-object/from16 v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzcfn;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbhz;->b:Lcom/google/android/gms/internal/ads/zzdpi;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzbhz;->c:Lcom/google/android/gms/internal/ads/zzfdk;

    const/16 v15, 0xe

    move-object v9, v1

    move-object/from16 v13, p4

    move-object/from16 v14, p3

    invoke-interface/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzcfn;->l0(Lcom/google/android/gms/ads/internal/util/zzbr;Lcom/google/android/gms/internal/ads/zzeaf;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzfdk;Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    :goto_ae
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbhz;->b:Lcom/google/android/gms/internal/ads/zzdpi;

    if-eqz v2, :cond_c0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbhz;->c:Lcom/google/android/gms/internal/ads/zzfdk;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    const-string v8, "dialog_impression"

    move-object/from16 v1, p2

    move-object/from16 v5, p4

    move-object v6, v8

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzean;->Ta(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzfdk;Lcom/google/android/gms/internal/ads/zzeaf;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_c0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/client/zza;->w0()V

    return v16

    :cond_c4
    :goto_c4
    move-object v6, v15

    .line 21
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    .line 22
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzeaf;->d(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbhz;->b:Lcom/google/android/gms/internal/ads/zzdpi;

    if-eqz v4, :cond_11d

    new-instance v9, Ljava/util/HashMap;

    .line 23
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v4, "dialog_not_shown_reason"

    if-nez v2, :cond_dd

    const-string v1, "notifications_disabled"

    .line 24
    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10c

    :cond_dd
    if-eqz v3, :cond_e5

    const-string v1, "notification_channel_disabled"

    .line 25
    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10c

    :cond_e5
    if-nez v1, :cond_ed

    const-string v1, "work_manager_unavailable"

    .line 26
    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10c

    .line 27
    :cond_ed
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->K7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_105

    const-string v1, "notification_flow_disabled"

    .line 30
    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10c

    :cond_105
    if-eqz v5, :cond_10c

    const-string v1, "fullscreen_no_activity"

    .line 31
    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_10c
    :goto_10c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbhz;->b:Lcom/google/android/gms/internal/ads/zzdpi;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbhz;->c:Lcom/google/android/gms/internal/ads/zzfdk;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    const-string v10, "dialog_not_shown"

    move-object/from16 v1, p2

    move-object/from16 v5, p4

    move-object v6, v10

    move-object v7, v9

    .line 33
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzean;->Ua(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzfdk;Lcom/google/android/gms/internal/ads/zzeaf;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_11d
    return v8
.end method

.method private final k(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhz;->b:Lcom/google/android/gms/internal/ads/zzdpi;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->S7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "cct_open_status"

    const-string v2, "cct_action"

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhz;->c:Lcom/google/android/gms/internal/ads/zzfdk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbr;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfdj;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 6
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhz;->b:Lcom/google/android/gms/internal/ads/zzdpi;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpi;->a()Lcom/google/android/gms/internal/ads/zzdph;

    move-result-object v0

    const-string v3, "action"

    .line 8
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzdph;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdph;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbr;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdph;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdph;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdph;->g()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zza;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhz;->e(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;)V
    .registers 32

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v0, "u"

    .line 1
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    move-object v10, v8

    check-cast v10, Lcom/google/android/gms/internal/ads/zzcei;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbxh;->c(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v11

    const-string v0, "a"

    .line 3
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2b

    const-string v0, "Action missing from an open GMSG."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_2b
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzbhz;->a:Lcom/google/android/gms/ads/internal/zzb;

    if-eqz v0, :cond_3c

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzb;->c()Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_3c

    .line 6
    :cond_36
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzbhz;->a:Lcom/google/android/gms/ads/internal/zzb;

    .line 7
    invoke-virtual {v0, v11}, Lcom/google/android/gms/ads/internal/zzb;->b(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_3c
    :goto_3c
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->u()Lcom/google/android/gms/internal/ads/zzeyc;

    move-result-object v0

    .line 9
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->g0()Lcom/google/android/gms/internal/ads/zzeyf;

    move-result-object v3

    const/4 v12, 0x0

    const-string v4, ""

    if-eqz v0, :cond_52

    if-eqz v3, :cond_52

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->j0:Z

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    move v13, v0

    move-object v14, v3

    goto :goto_54

    :cond_52
    move-object v14, v4

    const/4 v13, 0x0

    .line 10
    :goto_54
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->d9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "sc"

    .line 13
    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 14
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const/4 v6, 0x0

    goto :goto_7f

    :cond_7e
    const/4 v6, 0x1

    :goto_7f
    const-string v0, "expand"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 16
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->B()Z

    move-result v0

    if-eqz v0, :cond_93

    const-string v0, "Cannot expand WebView that is already expanded."

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_93
    invoke-direct {v7, v12}, Lcom/google/android/gms/internal/ads/zzbhz;->i(Z)V

    .line 19
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfn;

    .line 20
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbhz;->f(Ljava/util/Map;)Z

    move-result v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbhz;->b(Ljava/util/Map;)I

    move-result v2

    .line 21
    invoke-interface {v0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzcfn;->W0(ZIZ)V

    return-void

    :cond_a5
    const-string v0, "webapp"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 23
    invoke-direct {v7, v12}, Lcom/google/android/gms/internal/ads/zzbhz;->i(Z)V

    if-eqz v11, :cond_c1

    .line 24
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfn;

    .line 25
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbhz;->f(Ljava/util/Map;)Z

    move-result v1

    .line 26
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbhz;->b(Ljava/util/Map;)I

    move-result v2

    .line 27
    invoke-interface {v0, v1, v2, v11, v6}, Lcom/google/android/gms/internal/ads/zzcfn;->D(ZILjava/lang/String;Z)V

    return-void

    .line 28
    :cond_c1
    move-object v15, v8

    check-cast v15, Lcom/google/android/gms/internal/ads/zzcfn;

    .line 29
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbhz;->f(Ljava/util/Map;)Z

    move-result v16

    .line 30
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbhz;->b(Ljava/util/Map;)I

    move-result v17

    const-string v0, "html"

    .line 31
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    const-string v0, "baseurl"

    .line 32
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move/from16 v20, v6

    .line 33
    invoke-interface/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzcfn;->D0(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_e6
    const-string v0, "chrome_custom_tab"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "true"

    if-eqz v0, :cond_208

    .line 35
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->d4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_107

    goto :goto_171

    .line 38
    :cond_107
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->j4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11f

    const-string v0, "User opt out chrome custom tab."

    .line 41
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    goto :goto_171

    :cond_11f
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->h4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_133

    :goto_131
    const/4 v12, 0x1

    goto :goto_171

    :cond_133
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->i4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_171

    if-nez v0, :cond_148

    goto :goto_171

    .line 47
    :cond_148
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x3b

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfng;->c(C)Lcom/google/android/gms/internal/ads/zzfng;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfoh;->c(Lcom/google/android/gms/internal/ads/zzfng;)Lcom/google/android/gms/internal/ads/zzfoh;

    move-result-object v4

    .line 48
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfoh;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_171

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15e

    goto :goto_131

    .line 50
    :cond_171
    :goto_171
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbs;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v12, :cond_1f2

    if-nez v0, :cond_182

    const/4 v0, 0x4

    .line 51
    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzbhz;->k(I)V

    goto :goto_1f2

    .line 52
    :cond_182
    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/ads/zzbhz;->i(Z)V

    .line 53
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_195

    const-string v0, "Cannot open browser with null or empty url"

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 55
    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzbhz;->k(I)V

    return-void

    .line 56
    :cond_195
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 58
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->T()Lcom/google/android/gms/internal/ads/zzapw;

    move-result-object v2

    .line 59
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object v3

    .line 60
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->g()Landroid/app/Activity;

    move-result-object v4

    .line 61
    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbhz;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhz;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v13, :cond_1c6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    if-eqz v1, :cond_1c6

    .line 63
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-direct {v7, v8, v1, v2, v14}, Lcom/google/android/gms/internal/ads/zzbhz;->j(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c6

    return-void

    :cond_1c6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhw;

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzbhw;-><init>(Lcom/google/android/gms/internal/ads/zzbhz;)V

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzbhz;->g:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 65
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfn;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const/4 v9, 0x0

    .line 66
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzbhz;->g:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x1

    move-object v8, v2

    .line 68
    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    .line 69
    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzcfn;->E0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V

    return-void

    :cond_1f2
    :goto_1f2
    const-string v0, "use_first_package"

    .line 70
    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "use_running_process"

    .line 71
    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v13

    move-object v5, v14

    .line 72
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbhz;->h(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;Z)V

    return-void

    :cond_208
    const-string v0, "app"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22b

    const-string v0, "system_browser"

    .line 74
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21f

    goto :goto_22b

    :cond_21f
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v13

    move-object v5, v14

    .line 75
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbhz;->h(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;Z)V

    return-void

    :cond_22b
    :goto_22b
    const-string v0, "open_app"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v15, "p"

    if-eqz v0, :cond_28f

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->C7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 77
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_248

    return-void

    .line 79
    :cond_248
    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/ads/zzbhz;->i(Z)V

    .line 80
    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_259

    const-string v0, "Package name missing from open app action."

    .line 81
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_259
    if-eqz v13, :cond_26b

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    if-eqz v1, :cond_26b

    .line 82
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v8, v1, v0, v14}, Lcom/google/android/gms/internal/ads/zzbhz;->j(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26a

    goto :goto_26b

    :cond_26a
    return-void

    .line 83
    :cond_26b
    :goto_26b
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_27b

    const-string v0, "Cannot get package manager from open app action."

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_27b
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_28e

    .line 86
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfn;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzbhz;->g:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzx;)V

    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzcfn;->E0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V

    :cond_28e
    return-void

    .line 87
    :cond_28f
    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/ads/zzbhz;->i(Z)V

    const-string v0, "intent_url"

    .line 88
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 89
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_2b6

    .line 90
    :try_start_2a2
    invoke-static {v3, v12}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4
    :try_end_2a6
    .catch Ljava/net/URISyntaxException; {:try_start_2a2 .. :try_end_2a6} :catch_2a7

    goto :goto_2b6

    :catch_2a7
    move-exception v0

    move-object v5, v0

    .line 91
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Error parsing the url: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b6
    :goto_2b6
    move-object v0, v4

    if-eqz v0, :cond_30a

    .line 93
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_30a

    .line 94
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 95
    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30a

    .line 96
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 97
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->T()Lcom/google/android/gms/internal/ads/zzapw;

    move-result-object v5

    .line 98
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object v2

    .line 99
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->g()Landroid/app/Activity;

    move-result-object v12

    .line 100
    invoke-static {v4, v5, v3, v2, v12}, Lcom/google/android/gms/internal/ads/zzbhz;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    .line 101
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbhz;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 102
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_307

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->D7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 103
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 104
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_307

    .line 105
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_30a

    .line 106
    :cond_307
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 107
    :cond_30a
    :goto_30a
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->O7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 108
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v12, "event_id"

    if-eqz v2, :cond_32f

    const-string v2, "intent_async"

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32f

    .line 111
    invoke-interface {v9, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32f

    const/16 v16, 0x1

    goto :goto_331

    :cond_32f
    const/16 v16, 0x0

    :goto_331
    new-instance v5, Ljava/util/HashMap;

    .line 112
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v16, :cond_34f

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbhx;

    move-object v1, v4

    move-object/from16 v2, p0

    move v3, v6

    move-object v6, v4

    move-object/from16 v4, p1

    move-object/from16 v18, v5

    move-object/from16 v19, v15

    move-object v15, v6

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbhx;-><init>(Lcom/google/android/gms/internal/ads/zzbhz;ZLcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v15, v7, Lcom/google/android/gms/internal/ads/zzbhz;->g:Lcom/google/android/gms/ads/internal/overlay/zzx;

    const/4 v6, 0x0

    goto :goto_353

    :cond_34f
    move-object/from16 v18, v5

    move-object/from16 v19, v15

    :goto_353
    const-string v1, "openIntentAsync"

    if-eqz v0, :cond_393

    if-eqz v13, :cond_385

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    if-eqz v2, :cond_385

    .line 113
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-direct {v7, v8, v2, v3, v14}, Lcom/google/android/gms/internal/ads/zzbhz;->j(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_385

    if-eqz v16, :cond_384

    .line 115
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v3, v18

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbki;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzbki;->v0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_384
    return-void

    .line 117
    :cond_385
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfn;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzbhz;->g:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzx;)V

    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzcfn;->E0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V

    return-void

    :cond_393
    move-object/from16 v3, v18

    .line 118
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3bb

    .line 119
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 121
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->T()Lcom/google/android/gms/internal/ads/zzapw;

    move-result-object v4

    .line 122
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object v5

    .line 123
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->g()Landroid/app/Activity;

    move-result-object v11

    .line 124
    invoke-static {v2, v4, v0, v5, v11}, Lcom/google/android/gms/internal/ads/zzbhz;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhz;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_3bb
    if-eqz v13, :cond_3df

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzbhz;->f:Lcom/google/android/gms/internal/ads/zzeaf;

    if-eqz v0, :cond_3df

    .line 127
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v8, v0, v11, v14}, Lcom/google/android/gms/internal/ads/zzbhz;->j(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3df

    if-eqz v16, :cond_3de

    .line 128
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbki;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzbki;->v0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3de
    return-void

    .line 130
    :cond_3df
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfn;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v2, "i"

    .line 131
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    const-string v2, "m"

    .line 132
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/String;

    move-object/from16 v2, v19

    .line 133
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Ljava/lang/String;

    const-string v2, "c"

    .line 134
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Ljava/lang/String;

    const-string v2, "f"

    .line 135
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Ljava/lang/String;

    const-string v2, "e"

    .line 136
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Ljava/lang/String;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzbhz;->g:Lcom/google/android/gms/ads/internal/overlay/zzx;

    move-object/from16 v20, v1

    move-object/from16 v22, v11

    move-object/from16 v28, v2

    invoke-direct/range {v20 .. v28}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzx;)V

    .line 137
    invoke-interface {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzcfn;->E0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V

    return-void
.end method
