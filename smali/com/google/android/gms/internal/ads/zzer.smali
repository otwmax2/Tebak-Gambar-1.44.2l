###### Class com.google.android.gms.internal.ads.zzer (com.google.android.gms.internal.ads.zzer)
.class final Lcom/google/android/gms/internal/ads/zzer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdu;


# instance fields
.field private a:Landroid/os/Message;

.field private b:Lcom/google/android/gms/internal/ads/zzes;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->a:Landroid/os/Message;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->b:Lcom/google/android/gms/internal/ads/zzes;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzes;->a(Lcom/google/android/gms/internal/ads/zzer;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzer;
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->a:Landroid/os/Message;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzer;->b:Lcom/google/android/gms/internal/ads/zzes;

    return-object p0
.end method

.method public final b(Landroid/os/Handler;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->a:Landroid/os/Message;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzer;->c()V

    return p1
.end method

.method public final zza()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->a:Landroid/os/Message;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzer;->c()V

    return-void
.end method
