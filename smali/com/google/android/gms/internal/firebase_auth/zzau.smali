###### Class com.google.android.gms.internal.firebase_auth.zzau (com.google.android.gms.internal.firebase_auth.zzau)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzau;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase_auth/zzaf;

.field private final b:Z

.field private final c:Lcom/google/android/gms/internal/firebase_auth/zzba;

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzba;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaj;->b:Lcom/google/android/gms/internal/firebase_auth/zzaj;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 2
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzau;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzba;ZLcom/google/android/gms/internal/firebase_auth/zzaf;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzba;ZLcom/google/android/gms/internal/firebase_auth/zzaf;I)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->c:Lcom/google/android/gms/internal/firebase_auth/zzba;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->b:Z

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->a:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    const p1, 0x7fffffff

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/firebase_auth/zzau;)Lcom/google/android/gms/internal/firebase_auth/zzaf;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->a:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    return-object p0
.end method

.method public static b(C)Lcom/google/android/gms/internal/firebase_auth/zzau;
    .registers 3

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/firebase_auth/zzah;

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzah;-><init>(C)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzav;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzau;

    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzax;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase_auth/zzax;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzaf;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzau;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzba;)V

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/firebase_auth/zzau;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->d:I

    return p0
.end method


# virtual methods
.method public final c(Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzav;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->c:Lcom/google/android/gms/internal/firebase_auth/zzba;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzba;->a(Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 6
    :cond_1e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
