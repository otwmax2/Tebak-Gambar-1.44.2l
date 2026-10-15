###### Class com.google.android.gms.internal.firebase_auth.zzkm (com.google.android.gms.internal.firebase_auth.zzkm)
.class final Lcom/google/android/gms/internal/firebase_auth/zzkm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzkl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzkm;->a:Ljava/util/Iterator;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzko;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzko;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzkm;->b:Ljava/lang/Iterable;

    return-void
.end method

.method static a()Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzkm;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Iterator;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzkm;->a:Ljava/util/Iterator;

    return-object v0
.end method
