###### Class com.google.android.gms.internal.ads.zzejq (com.google.android.gms.internal.ads.zzejq)
.class public final Lcom/google/android/gms/internal/ads/zzejq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfut;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfut;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejq;->a:Lcom/google/android/gms/internal/ads/zzfut;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejq;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejq;->a:Lcom/google/android/gms/internal/ads/zzfut;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzejp;->a:Lcom/google/android/gms/internal/ads/zzejp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzejq;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->m(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzftq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzejp (com.google.android.gms.internal.ads.zzejp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzejp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftq;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzejp;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzejp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzejp;->a:Lcom/google/android/gms/internal/ads/zzejp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    check-cast p1, Ljava/lang/String;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzejo;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzejo (com.google.android.gms.internal.ads.zzejo)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzejo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepm;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejo;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejo;->a:Ljava/lang/String;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "ms"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
