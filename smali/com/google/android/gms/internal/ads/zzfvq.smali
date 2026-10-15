###### Class com.google.android.gms.internal.ads.zzfvq (com.google.android.gms.internal.ads.zzfvq)
.class public final Lcom/google/android/gms/internal/ads/zzfvq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvq;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public static b(Ljava/io/OutputStream;)Lcom/google/android/gms/internal/ads/zzfvq;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfvq;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzgll;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvq;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgon;->f(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvq;->a:Ljava/io/OutputStream;

    .line 3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_b
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvq;->a:Ljava/io/OutputStream;

    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 6
    throw p1
.end method
