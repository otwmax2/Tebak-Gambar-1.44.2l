###### Class com.google.android.gms.internal.firebase_auth.zzjm (com.google.android.gms.internal.firebase_auth.zzjm)
.class final Lcom/google/android/gms/internal/firebase_auth/zzjm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static final a:Lcom/google/android/gms/internal/firebase_auth/zzjk;

.field private static final b:Lcom/google/android/gms/internal/firebase_auth/zzjk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjm;->c()Lcom/google/android/gms/internal/firebase_auth/zzjk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjm;->a:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzjj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzjj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjm;->b:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/firebase_auth/zzjk;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjm;->a:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/firebase_auth/zzjk;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjm;->b:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    return-object v0
.end method

.method private static c()Lcom/google/android/gms/internal/firebase_auth/zzjk;
    .registers 3

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzjk;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method
