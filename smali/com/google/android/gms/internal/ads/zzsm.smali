###### Class com.google.android.gms.internal.ads.zzsm (com.google.android.gms.internal.ads.zzsm)
.class public final Lcom/google/android/gms/internal/ads/zzsm;
.super Lcom/google/android/gms/internal/ads/zzcn;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final f:Lcom/google/android/gms/internal/ads/zzbg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbg;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsm;->f:Lcom/google/android/gms/internal/ads/zzbg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsl;->i:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 p1, -0x1

    return p1
.end method

.method public final b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;
    .registers 15

    const/4 p1, 0x0

    if-eqz p3, :cond_a

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    if-eqz p3, :cond_f

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsl;->i:Ljava/lang/Object;

    :cond_f
    move-object v3, p1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    sget-object v9, Lcom/google/android/gms/internal/ads/zzd;->d:Lcom/google/android/gms/internal/ads/zzd;

    const/4 v10, 0x1

    move-object v1, p2

    .line 3
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzck;->k(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzd;Z)Lcom/google/android/gms/internal/ads/zzck;

    return-object p2
.end method

.method public final e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;
    .registers 26

    move-object/from16 v15, p2

    move-object/from16 v0, p2

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcm;->o:Ljava/lang/Object;

    move-object/from16 v13, p0

    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzsm;->f:Lcom/google/android/gms/internal/ads/zzbg;

    const/4 v3, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v8

    move-wide v6, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v0 .. v20}, Lcom/google/android/gms/internal/ads/zzcm;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbg;Ljava/lang/Object;JJJZZLcom/google/android/gms/internal/ads/zzaw;JJIIJ)Lcom/google/android/gms/internal/ads/zzcm;

    const/4 v0, 0x1

    move-object/from16 v1, p2

    .line 2
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcm;->j:Z

    return-object v1
.end method

.method public final f(I)Ljava/lang/Object;
    .registers 2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzsl;->i:Ljava/lang/Object;

    return-object p1
.end method
