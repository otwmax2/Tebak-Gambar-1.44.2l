###### Class com.google.android.gms.internal.drive.zzld (com.google.android.gms.internal.drive.zzld)
.class final Lcom/google/android/gms/internal/drive/zzld;
.super Lcom/google/android/gms/internal/drive/zzla;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzla;-><init>(Lcom/google/android/gms/internal/drive/zzlb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzlb;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzld;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/drive/zzkp;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/google/android/gms/internal/drive/zzkp<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/drive/zzkp;

    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/Object;J)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzld;->e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/drive/zzkp;->C2()V

    return-void
.end method

.method final b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/drive/zzld;->e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v0

    .line 2
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/drive/zzld;->e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object p2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_22

    if-lez v2, :cond_22

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->X0()Z

    move-result v3

    if-nez v3, :cond_1f

    add-int/2addr v2, v1

    .line 6
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/drive/zzkp;->x2(I)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v0

    .line 7
    :cond_1f
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_22
    if-lez v1, :cond_25

    move-object p2, v0

    .line 8
    :cond_25
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/drive/zznd;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
