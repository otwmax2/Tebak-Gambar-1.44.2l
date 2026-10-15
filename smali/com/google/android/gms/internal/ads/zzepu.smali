###### Class com.google.android.gms.internal.ads.zzepu (com.google.android.gms.internal.ads.zzepu)
.class final Lcom/google/android/gms/internal/ads/zzepu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfuu;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepu;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepu;->b:Landroid/content/Context;

    return-void
.end method

.method private static b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/zzeps;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzepu;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "geo:0,0?q=donuts"

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzepu;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const-string v4, "http://www.google.com"

    .line 4
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzepu;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 5
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbyt;->x()Z

    move-result v9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzepu;->b:Landroid/content/Context;

    .line 8
    invoke-static {v5}, Lcom/google/android/gms/common/util/DeviceProperties;->c(Landroid/content/Context;)Z

    move-result v10

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzepu;->b:Landroid/content/Context;

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/common/util/DeviceProperties;->d(Landroid/content/Context;)Z

    move-result v11

    .line 10
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v6, 0x18

    if-lt v2, v6, :cond_5b

    .line 12
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v6, 0x0

    .line 13
    :goto_47
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5b

    .line 14
    invoke-virtual {v2, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_5b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzepu;->b:Landroid/content/Context;

    const-string v6, "market://details?id=com.google.android.gms.ads"

    .line 15
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzepu;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    const-string v7, "."

    if-nez v6, :cond_69

    :catch_67
    :cond_67
    :goto_67
    const/4 v2, 0x0

    goto :goto_90

    .line 16
    :cond_69
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_6e

    goto :goto_67

    .line 17
    :cond_6e
    :try_start_6e
    invoke-static {v2}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    iget-object v15, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v15, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 18
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_90
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e .. :try_end_90} :catch_67

    .line 19
    :goto_90
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzepu;->b:Landroid/content/Context;

    .line 20
    :try_start_92
    invoke-static {v6}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v6

    const-string v15, "com.android.vending"

    const/16 v14, 0x80

    .line 21
    invoke-virtual {v6, v15, v14}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_b8

    .line 22
    iget v14, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b6} :catch_b8

    move-object v15, v6

    goto :goto_b9

    :catch_b8
    :cond_b8
    const/4 v15, 0x0

    :goto_b9
    sget-object v16, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzepu;->b:Landroid/content/Context;

    if-nez v1, :cond_c3

    move-object/from16 v17, v15

    :cond_c1
    const/4 v1, 0x0

    goto :goto_10c

    .line 23
    :cond_c3
    new-instance v7, Landroid/content/Intent;

    const-string v14, "http://www.example.com"

    .line 24
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v17, v15

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v7, v15, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 25
    invoke-virtual {v1, v7, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    const/high16 v15, 0x10000

    .line 26
    invoke-virtual {v1, v7, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c1

    if-eqz v14, :cond_c1

    const/4 v7, 0x0

    .line 27
    :goto_e1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_c1

    .line 28
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 29
    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_108

    .line 30
    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 31
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgxm;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_10c

    :cond_108
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto :goto_e1

    .line 33
    :goto_10c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    new-instance v5, Landroid/os/StatFs;

    .line 34
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    const-wide/16 v14, 0x400

    div-long v19, v5, v14

    .line 36
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbar;->B9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v5

    .line 38
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_145

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzepu;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->W(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_145

    const/16 v21, 0x1

    goto :goto_147

    :cond_145
    const/16 v21, 0x0

    :goto_147
    if-eqz v4, :cond_14b

    const/4 v7, 0x1

    goto :goto_14c

    :cond_14b
    const/4 v7, 0x0

    :goto_14c
    if-eqz v3, :cond_14f

    goto :goto_150

    :cond_14f
    const/4 v6, 0x0

    :goto_150
    new-instance v3, Lcom/google/android/gms/internal/ads/zzeps;

    move-object v5, v3

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v14, v2

    move-object/from16 v15, v17

    move/from16 v17, v1

    invoke-direct/range {v5 .. v21}, Lcom/google/android/gms/internal/ads/zzeps;-><init>(ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JZ)V

    return-object v3
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0x26

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepu;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzept;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzept;-><init>(Lcom/google/android/gms/internal/ads/zzepu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzept (com.google.android.gms.internal.ads.zzept)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzept;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzepu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzepu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzept;->a:Lcom/google/android/gms/internal/ads/zzepu;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzept;->a:Lcom/google/android/gms/internal/ads/zzepu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepu;->a()Lcom/google/android/gms/internal/ads/zzeps;

    move-result-object v0

    return-object v0
.end method
