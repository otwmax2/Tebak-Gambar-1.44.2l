###### Class com.google.android.gms.internal.ads.zzcba (com.google.android.gms.internal.ads.zzcba)
.class public abstract Lcom/google/android/gms/internal/ads/zzcba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final o:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static final p:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcba;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcba;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static M()I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcba;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static O()I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcba;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected static t()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcba;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method protected static u()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcba;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public abstract A(I)V
.end method

.method public abstract B(Lcom/google/android/gms/internal/ads/zzcaz;)V
.end method

.method public abstract C(I)V
.end method

.method public abstract D(I)V
.end method

.method public abstract E(Z)V
.end method

.method public abstract F(Z)V
.end method

.method public abstract G(I)V
.end method

.method public abstract H(Landroid/view/Surface;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract I(FZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract J()V
.end method

.method public abstract K()Z
.end method

.method public abstract L()I
.end method

.method public abstract N()I
.end method

.method public abstract P()J
.end method

.method public abstract Q()J
.end method

.method public abstract R()J
.end method

.method public abstract S()J
.end method

.method public abstract T()J
.end method

.method public abstract r()J
.end method

.method public abstract s()J
.end method

.method public abstract v([Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract w([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
.end method

.method public abstract x()V
.end method

.method public abstract y(J)V
.end method

.method public abstract z(I)V
.end method
