###### Class com.google.android.gms.internal.ads.zzgnn (com.google.android.gms.internal.ads.zzgnn)
.class public final Lcom/google/android/gms/internal/ads/zzgnn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final b:Lcom/google/android/gms/internal/ads/zzgnn;

.field public static final c:Lcom/google/android/gms/internal/ads/zzgnn;

.field public static final d:Lcom/google/android/gms/internal/ads/zzgnn;

.field public static final e:Lcom/google/android/gms/internal/ads/zzgnn;

.field public static final f:Lcom/google/android/gms/internal/ads/zzgnn;

.field public static final g:Lcom/google/android/gms/internal/ads/zzgnn;

.field public static final h:Lcom/google/android/gms/internal/ads/zzgnn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgnm;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgno;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgno;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnn;-><init>(Lcom/google/android/gms/internal/ads/zzgnv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgnn;->b:Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgns;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgns;-><init>()V

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnn;-><init>(Lcom/google/android/gms/internal/ads/zzgnv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgnn;->c:Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgnu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgnu;-><init>()V

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnn;-><init>(Lcom/google/android/gms/internal/ads/zzgnv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgnn;->d:Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgnt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgnt;-><init>()V

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnn;-><init>(Lcom/google/android/gms/internal/ads/zzgnv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgnn;->e:Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgnp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgnp;-><init>()V

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnn;-><init>(Lcom/google/android/gms/internal/ads/zzgnv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgnn;->f:Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgnr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgnr;-><init>()V

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnn;-><init>(Lcom/google/android/gms/internal/ads/zzgnv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgnn;->g:Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgnq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgnq;-><init>()V

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnn;-><init>(Lcom/google/android/gms/internal/ads/zzgnv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgnn;->h:Lcom/google/android/gms/internal/ads/zzgnn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgnv;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgat;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgnl;-><init>(Lcom/google/android/gms/internal/ads/zzgnv;Lcom/google/android/gms/internal/ads/zzgnk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnn;->a:Lcom/google/android/gms/internal/ads/zzgnm;

    return-void

    .line 2
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgof;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnh;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgnh;-><init>(Lcom/google/android/gms/internal/ads/zzgnv;Lcom/google/android/gms/internal/ads/zzgng;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnn;->a:Lcom/google/android/gms/internal/ads/zzgnm;

    return-void

    :cond_20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnj;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgnj;-><init>(Lcom/google/android/gms/internal/ads/zzgnv;Lcom/google/android/gms/internal/ads/zzgni;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnn;->a:Lcom/google/android/gms/internal/ads/zzgnm;

    return-void
.end method

.method public static varargs b([Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 2
    aget-object v2, p0, v1

    .line 3
    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnn;->a:Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnm;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
