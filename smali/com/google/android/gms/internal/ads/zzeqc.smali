###### Class com.google.android.gms.internal.ads.zzeqc (com.google.android.gms.internal.ads.zzeqc)
.class public final Lcom/google/android/gms/internal/ads/zzeqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:I

.field private final e:Z

.field private final f:Z

.field private final g:Lcom/google/android/gms/internal/ads/zzbya;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbya;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ[B)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqc;->g:Lcom/google/android/gms/internal/ads/zzbya;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqc;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeqc;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeqc;->c:Ljava/util/concurrent/Executor;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzeqc;->d:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzeqc;->e:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzeqc;->f:Z

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/internal/ads/zzeqd;
    .registers 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfks;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfks;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeqc;->e:Z

    if-nez v1, :cond_1b

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->F2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_31

    :cond_1b
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeqc;->e:Z

    if-eqz v1, :cond_6f

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->G2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6f

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqc;->a:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkv;->k(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfkv;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqc;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->J2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzeqc;->f:Z

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfkv;->j(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object v0
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_5d} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_5d} :catch_5e

    goto :goto_6f

    :catch_5e
    move-exception v0

    goto :goto_61

    :catch_60
    move-exception v0

    .line 13
    :goto_61
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    const-string v2, "AdIdInfoSignalSource.getPaidV1"

    .line 14
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfks;

    .line 15
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfks;-><init>()V

    .line 16
    :cond_6f
    :goto_6f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeqd;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzeqd;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfks;)V

    return-object v1
.end method

.method final synthetic b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzeqd;
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqc;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    move-object p1, v0

    goto :goto_14

    :cond_e
    const-string v1, "android_id"

    .line 3
    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_14
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeqd;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfks;

    .line 5
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfks;-><init>()V

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzeqd;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfks;)V

    return-object v1
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->O0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqc;->g:Lcom/google/android/gms/internal/ads/zzbya;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqc;->a:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeqc;->d:I

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbya;->a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfua;->D(Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfua;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeqa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeqa;-><init>(Lcom/google/android/gms/internal/ads/zzeqc;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqc;->c:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->l(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->P0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeqc;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfuj;->n(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfua;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeqb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeqb;-><init>(Lcom/google/android/gms/internal/ads/zzeqc;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqc;->c:Ljava/util/concurrent/Executor;

    const-class v3, Ljava/lang/Throwable;

    .line 9
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->e(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0

    :cond_53
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Did not ad Ad ID into query param."

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->g(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzeqa (com.google.android.gms.internal.ads.zzeqa)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzeqc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeqc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->a:Lcom/google/android/gms/internal/ads/zzeqc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqa;->a:Lcom/google/android/gms/internal/ads/zzeqc;

    check-cast p1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeqc;->a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/internal/ads/zzeqd;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzeqb (com.google.android.gms.internal.ads.zzeqb)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzeqc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeqc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqb;->a:Lcom/google/android/gms/internal/ads/zzeqc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqb;->a:Lcom/google/android/gms/internal/ads/zzeqc;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeqc;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzeqd;

    move-result-object p1

    return-object p1
.end method
