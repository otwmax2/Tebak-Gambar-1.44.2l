###### Class com.google.android.gms.internal.ads.zzalz (com.google.android.gms.internal.ads.zzalz)
.class public final Lcom/google/android/gms/internal/ads/zzalz;
.super Lcom/google/android/gms/internal/ads/zzgwj;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final w:Lcom/google/android/gms/internal/ads/zzgwq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzalz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwq;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgwq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalz;->w:Lcom/google/android/gms/internal/ads/zzgwq;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgwk;Lcom/google/android/gms/internal/ads/zzaly;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwj;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgwk;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgwj;->g(Lcom/google/android/gms/internal/ads/zzgwk;JLcom/google/android/gms/internal/ads/zzaly;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwj;->p:Lcom/google/android/gms/internal/ads/zzgwk;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "model("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
