###### Class com.google.android.gms.internal.ads.zzgay (com.google.android.gms.internal.ads.zzgay)
.class final Lcom/google/android/gms/internal/ads/zzgay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfxb;

.field private final b:Lcom/google/android/gms/internal/ads/zzggm;

.field private final c:Lcom/google/android/gms/internal/ads/zzggm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfxb;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgay;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxb;->f()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdd;->a()Lcom/google/android/gms/internal/ads/zzgdd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdd;->b()Lcom/google/android/gms/internal/ads/zzggn;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgda;->a(Lcom/google/android/gms/internal/ads/zzfxb;)Lcom/google/android/gms/internal/ads/zzggs;

    move-result-object p1

    const-string v1, "daead"

    const-string v2, "encrypt"

    .line 4
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzggn;->a(Lcom/google/android/gms/internal/ads/zzggs;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgay;->b:Lcom/google/android/gms/internal/ads/zzggm;

    const-string v2, "decrypt"

    .line 5
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzggn;->a(Lcom/google/android/gms/internal/ads/zzggs;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object p1

    :goto_27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgay;->c:Lcom/google/android/gms/internal/ads/zzggm;

    return-void

    :cond_2a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgda;->a:Lcom/google/android/gms/internal/ads/zzggm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgay;->b:Lcom/google/android/gms/internal/ads/zzggm;

    goto :goto_27
.end method


# virtual methods
.method public final a([B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgay;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfwx;->g()[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgay;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfwx;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfvu;

    .line 3
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzfvu;->a([B[B)[B

    move-result-object p2

    aput-object p2, v0, v1

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgay;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxb;->a()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwx;->a()I

    array-length p1, p1
    :try_end_31
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_31} :catch_32

    return-object p2

    :catch_32
    move-exception p1

    .line 6
    throw p1
.end method
