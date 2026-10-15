###### Class com.google.android.gms.internal.firebase_auth.zzix (com.google.android.gms.internal.firebase_auth.zzix)
.class abstract Lcom/google/android/gms/internal/firebase_auth/zzix;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static final a:Lcom/google/android/gms/internal/firebase_auth/zzix;

.field private static final b:Lcom/google/android/gms/internal/firebase_auth/zzix;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zziz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zziz;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzja;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzix;->a:Lcom/google/android/gms/internal/firebase_auth/zzix;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzjc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzja;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzix;->b:Lcom/google/android/gms/internal/firebase_auth/zzix;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzja;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzix;-><init>()V

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/firebase_auth/zzix;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzix;->a:Lcom/google/android/gms/internal/firebase_auth/zzix;

    return-object v0
.end method

.method static c()Lcom/google/android/gms/internal/firebase_auth/zzix;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzix;->b:Lcom/google/android/gms/internal/firebase_auth/zzix;

    return-object v0
.end method


# virtual methods
.method abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract d(Ljava/lang/Object;J)V
.end method
