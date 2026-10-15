###### Class com.google.android.gms.internal.drive.zzlc (com.google.android.gms.internal.drive.zzlc)
.class final Lcom/google/android/gms/internal/drive/zzlc;
.super Lcom/google/android/gms/internal/drive/zzla;


# static fields
.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/drive/zzlc;->c:Ljava/lang/Class;

    return-void
.end method

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
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzlc;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/Object;J)V
    .registers 7

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzkz;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkz;->f3()Lcom/google/android/gms/internal/drive/zzkz;

    move-result-object v0

    goto :goto_36

    .line 4
    :cond_11
    sget-object v1, Lcom/google/android/gms/internal/drive/zzlc;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-void

    .line 5
    :cond_1e
    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzmc;

    if-eqz v1, :cond_32

    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzkp;

    if-eqz v1, :cond_32

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->X0()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->C2()V

    :cond_31
    return-void

    .line 8
    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 9
    :goto_36
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/drive/zznd;->g(Ljava/lang/Object;JLjava/lang/Object;)V

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
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/drive/zzlc;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/drive/zzlc;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 5
    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzkz;

    if-eqz v2, :cond_1c

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/drive/zzky;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/drive/zzky;-><init>(I)V

    goto :goto_31

    .line 7
    :cond_1c
    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzmc;

    if-eqz v2, :cond_2c

    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzkp;

    if-eqz v2, :cond_2c

    .line 8
    check-cast v1, Lcom/google/android/gms/internal/drive/zzkp;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/drive/zzkp;->x2(I)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v0

    move-object v1, v0

    goto :goto_31

    .line 9
    :cond_2c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    :goto_31
    invoke-static {p1, p3, p4, v1}, Lcom/google/android/gms/internal/drive/zznd;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_87

    .line 11
    :cond_35
    sget-object v2, Lcom/google/android/gms/internal/drive/zzlc;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-static {p1, p3, p4, v2}, Lcom/google/android/gms/internal/drive/zznd;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_51
    move-object v1, v2

    goto :goto_87

    .line 15
    :cond_53
    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzna;

    if-eqz v2, :cond_6a

    .line 16
    new-instance v2, Lcom/google/android/gms/internal/drive/zzky;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/drive/zzky;-><init>(I)V

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/drive/zzna;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/drive/zziw;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-static {p1, p3, p4, v2}, Lcom/google/android/gms/internal/drive/zznd;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_51

    .line 19
    :cond_6a
    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzmc;

    if-eqz v2, :cond_87

    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzkp;

    if-eqz v2, :cond_87

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/drive/zzkp;

    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/internal/drive/zzkp;->X0()Z

    move-result v3

    if-nez v3, :cond_87

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/drive/zzkp;->x2(I)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v1

    .line 22
    invoke-static {p1, p3, p4, v1}, Lcom/google/android/gms/internal/drive/zznd;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 23
    :cond_87
    :goto_87
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v0, :cond_96

    if-lez v2, :cond_96

    .line 25
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_96
    if-lez v0, :cond_99

    move-object p2, v1

    .line 26
    :cond_99
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/drive/zznd;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
