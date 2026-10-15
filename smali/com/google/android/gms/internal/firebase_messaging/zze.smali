###### Class com.google.android.gms.internal.firebase_messaging.zze (com.google.android.gms.internal.firebase_messaging.zze)
.class public abstract Lcom/google/android/gms/internal/firebase_messaging/zze;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/firebase_messaging/zzae;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzad;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zzd;->a:Le6/a;

    .line 3
    invoke-interface {v1, v0}, Le6/a;->a(Le6/b;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzad;->b()Lcom/google/android/gms/internal/firebase_messaging/zzae;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zze;->a:Lcom/google/android/gms/internal/firebase_messaging/zzae;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)[B
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zze;->a:Lcom/google/android/gms/internal/firebase_messaging/zzae;

    .line 1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_7
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzae;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_a

    .line 3
    :catch_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Ls6/b;
.end method
