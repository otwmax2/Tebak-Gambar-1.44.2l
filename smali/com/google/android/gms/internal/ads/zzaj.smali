###### Class com.google.android.gms.internal.ads.zzaj (com.google.android.gms.internal.ads.zzaj)
.class public final Lcom/google/android/gms/internal/ads/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private final c:Lcom/google/android/gms/internal/ads/zzal;

.field private final d:Lcom/google/android/gms/internal/ads/zzar;

.field private final e:Ljava/util/List;

.field private final f:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final g:Lcom/google/android/gms/internal/ads/zzau;

.field private final h:Lcom/google/android/gms/internal/ads/zzbd;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaj;->c:Lcom/google/android/gms/internal/ads/zzal;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzar;-><init>(Lcom/google/android/gms/internal/ads/zzaq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaj;->d:Lcom/google/android/gms/internal/ads/zzar;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaj;->e:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaj;->f:Lcom/google/android/gms/internal/ads/zzfqk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzau;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaj;->g:Lcom/google/android/gms/internal/ads/zzau;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbd;->c:Lcom/google/android/gms/internal/ads/zzbd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaj;->h:Lcom/google/android/gms/internal/ads/zzbd;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaj;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzaj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaj;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzbg;
    .registers 22

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaj;->b:Landroid/net/Uri;

    const/4 v11, 0x0

    if-eqz v2, :cond_1a

    new-instance v12, Lcom/google/android/gms/internal/ads/zzba;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaj;->e:Ljava/util/List;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaj;->f:Lcom/google/android/gms/internal/ads/zzfqk;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzba;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzas;Lcom/google/android/gms/internal/ads/zzai;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfqk;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaz;)V

    move-object/from16 v16, v12

    goto :goto_1c

    :cond_1a
    move-object/from16 v16, v11

    .line 2
    :goto_1c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbg;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaj;->a:Ljava/lang/String;

    if-nez v2, :cond_24

    const-string v2, ""

    :cond_24
    move-object v14, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaj;->c:Lcom/google/android/gms/internal/ads/zzal;

    .line 3
    new-instance v15, Lcom/google/android/gms/internal/ads/zzap;

    invoke-direct {v15, v2, v11}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Lcom/google/android/gms/internal/ads/zzal;Lcom/google/android/gms/internal/ads/zzao;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaj;->g:Lcom/google/android/gms/internal/ads/zzau;

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaw;

    invoke-direct {v3, v2, v11}, Lcom/google/android/gms/internal/ads/zzaw;-><init>(Lcom/google/android/gms/internal/ads/zzau;Lcom/google/android/gms/internal/ads/zzav;)V

    .line 5
    sget-object v18, Lcom/google/android/gms/internal/ads/zzbm;->y:Lcom/google/android/gms/internal/ads/zzbm;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaj;->h:Lcom/google/android/gms/internal/ads/zzbd;

    const/16 v20, 0x0

    move-object v13, v1

    move-object/from16 v17, v3

    move-object/from16 v19, v2

    invoke-direct/range {v13 .. v20}, Lcom/google/android/gms/internal/ads/zzbg;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzap;Lcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzaw;Lcom/google/android/gms/internal/ads/zzbm;Lcom/google/android/gms/internal/ads/zzbd;Lcom/google/android/gms/internal/ads/zzbf;)V

    return-object v1
.end method
