###### Class com.google.android.gms.internal.ads.zzgh (com.google.android.gms.internal.ads.zzgh)
.class public final Lcom/google/android/gms/internal/ads/zzgh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfg;

.field private b:J

.field private c:Landroid/net/Uri;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfg;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->a:Lcom/google/android/gms/internal/ads/zzfg;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->c:Landroid/net/Uri;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->a:Lcom/google/android/gms/internal/ads/zzfg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfg;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->a:Lcom/google/android/gms/internal/ads/zzfg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfg;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->a:Lcom/google/android/gms/internal/ads/zzfg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfg;->d()V

    return-void
.end method

.method public final e([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->a:Lcom/google/android/gms/internal/ads/zzfg;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzr;->e([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_f

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgh;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgh;->b:J

    :cond_f
    return p1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzgi;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->a:Lcom/google/android/gms/internal/ads/zzfg;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfg;->f(Lcom/google/android/gms/internal/ads/zzgi;)V

    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->c:Landroid/net/Uri;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->a:Lcom/google/android/gms/internal/ads/zzfg;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfg;->j(Lcom/google/android/gms/internal/ads/zzfl;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgh;->a()Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->c:Landroid/net/Uri;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgh;->b()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public final n()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->b:J

    return-wide v0
.end method

.method public final o()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public final p()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->d:Ljava/util/Map;

    return-object v0
.end method
