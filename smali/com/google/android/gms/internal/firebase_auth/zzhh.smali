###### Class com.google.android.gms.internal.firebase_auth.zzhh (com.google.android.gms.internal.firebase_auth.zzhh)
.class public abstract Lcom/google/android/gms/internal/firebase_auth/zzhh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field a:I

.field b:I

.field private c:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhh;->a:I

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhh;->b:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhh;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzhg;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;-><init>()V

    return-void
.end method

.method static a([BIIZ)Lcom/google/android/gms/internal/firebase_auth/zzhh;
    .registers 10

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzhj;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_auth/zzhj;-><init>([BIIZLcom/google/android/gms/internal/firebase_auth/zzhg;)V

    .line 2
    :try_start_b
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhh;->b(I)I
    :try_end_e
    .catch Lcom/google/android/gms/internal/firebase_auth/zzin; {:try_start_b .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract b(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzin;
        }
    .end annotation
.end method

.method public abstract c()I
.end method
