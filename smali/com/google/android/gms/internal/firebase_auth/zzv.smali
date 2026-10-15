###### Class com.google.android.gms.internal.firebase_auth.zzv (com.google.android.gms.internal.firebase_auth.zzv)
.class public final enum Lcom/google/android/gms/internal/firebase_auth/zzv;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzih;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_auth/zzv;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzih;"
    }
.end annotation


# static fields
.field public static final enum p:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field public static final enum q:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field public static final enum r:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field private static final enum s:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field public static final enum t:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field public static final enum u:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field private static final enum v:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field private static final w:Lcom/google/android/gms/internal/firebase_auth/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzik<",
            "Lcom/google/android/gms/internal/firebase_auth/zzv;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic x:[Lcom/google/android/gms/internal/firebase_auth/zzv;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const-string v1, "USER_ATTRIBUTE_NAME_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->p:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const-string v3, "EMAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_auth/zzv;->q:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const-string v5, "DISPLAY_NAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase_auth/zzv;->r:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 4
    new-instance v5, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const-string v7, "PROVIDER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase_auth/zzv;->s:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 5
    new-instance v7, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const-string v9, "PHOTO_URL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/firebase_auth/zzv;->t:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 6
    new-instance v9, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const-string v11, "PASSWORD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/firebase_auth/zzv;->u:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 7
    new-instance v11, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const-string v13, "RAW_USER_INFO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/firebase_auth/zzv;->v:Lcom/google/android/gms/internal/firebase_auth/zzv;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/google/android/gms/internal/firebase_auth/zzv;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/google/android/gms/internal/firebase_auth/zzv;->x:[Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->w:Lcom/google/android/gms/internal/firebase_auth/zzik;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->o:I

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/firebase_auth/zzij;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzw;->a:Lcom/google/android/gms/internal/firebase_auth/zzij;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_auth/zzv;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->x:[Lcom/google/android/gms/internal/firebase_auth/zzv;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_auth/zzv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_auth/zzv;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzv;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->o:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->o:I

    return v0
.end method

###### Class com.google.android.gms.internal.firebase_auth.zzx (com.google.android.gms.internal.firebase_auth.zzx)
.class final Lcom/google/android/gms/internal/firebase_auth/zzx;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzik;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_auth/zzik<",
        "Lcom/google/android/gms/internal/firebase_auth/zzv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
