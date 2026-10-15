###### Class com.google.android.gms.internal.ads.zzerj (com.google.android.gms.internal.ads.zzerj)
.class public final Lcom/google/android/gms/internal/ads/zzerj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzbyj;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/ads/zzbya;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbya;ILandroid/content/Context;Lcom/google/android/gms/internal/ads/zzbyj;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Ljava/lang/String;[B)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerj;->f:Lcom/google/android/gms/internal/ads/zzbya;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzerj;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzerj;->b:Lcom/google/android/gms/internal/ads/zzbyj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzerj;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzerj;->d:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzerj;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzerk;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzerj;->b:Lcom/google/android/gms/internal/ads/zzbyj;

    const-string v1, "AttestationTokenSignal"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0x2c

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzerg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzerg;-><init>(Lcom/google/android/gms/internal/ads/zzerj;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzerj;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuj;->k(Lcom/google/android/gms/internal/ads/zzftp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfua;->D(Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfua;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzerh;->a:Lcom/google/android/gms/internal/ads/zzerh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzerj;->d:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->l(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->P0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzerj;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfuj;->n(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfua;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeri;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeri;-><init>(Lcom/google/android/gms/internal/ads/zzerj;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfva;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v3, Ljava/lang/Exception;

    .line 9
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->e(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzerg (com.google.android.gms.internal.ads.zzerg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzerg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzerj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzerj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerg;->a:Lcom/google/android/gms/internal/ads/zzerj;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzerh (com.google.android.gms.internal.ads.zzerh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzerh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzerh;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzerh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzerh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzerh;->a:Lcom/google/android/gms/internal/ads/zzerh;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzerk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzerk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzeri (com.google.android.gms.internal.ads.zzeri)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeri;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzerj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzerj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeri;->a:Lcom/google/android/gms/internal/ads/zzerj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeri;->a:Lcom/google/android/gms/internal/ads/zzerj;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzerj;->a(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzerk;

    const/4 p1, 0x0

    return-object p1
.end method
