###### Class com.google.android.gms.internal.firebase_auth.zzgj (com.google.android.gms.internal.firebase_auth.zzgj)
.class public final enum Lcom/google/android/gms/internal/firebase_auth/zzgj;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzih;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_auth/zzgj;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzih;"
    }
.end annotation


# static fields
.field public static final enum p:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum q:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field private static final enum r:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field private static final enum s:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum t:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum u:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum v:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum w:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum x:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field private static final y:Lcom/google/android/gms/internal/firebase_auth/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzik<",
            "Lcom/google/android/gms/internal/firebase_auth/zzgj;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic z:[Lcom/google/android/gms/internal/firebase_auth/zzgj;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const-string v1, "OOB_REQ_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->p:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const-string v3, "PASSWORD_RESET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;->q:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const-string v5, "OLD_EMAIL_AGREE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase_auth/zzgj;->r:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 4
    new-instance v5, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const-string v7, "NEW_EMAIL_ACCEPT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase_auth/zzgj;->s:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 5
    new-instance v7, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const-string v9, "VERIFY_EMAIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/firebase_auth/zzgj;->t:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 6
    new-instance v9, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const-string v11, "RECOVER_EMAIL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/firebase_auth/zzgj;->u:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 7
    new-instance v11, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const-string v13, "EMAIL_SIGNIN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/firebase_auth/zzgj;->v:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 8
    new-instance v13, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const-string v15, "VERIFY_AND_CHANGE_EMAIL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/firebase_auth/zzgj;->w:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 9
    new-instance v15, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const-string v14, "REVERT_SECOND_FACTOR_ADDITION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/firebase_auth/zzgj;->x:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/google/android/gms/internal/firebase_auth/zzgj;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Lcom/google/android/gms/internal/firebase_auth/zzgj;->z:[Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->y:Lcom/google/android/gms/internal/firebase_auth/zzik;

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
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->o:I

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/firebase_auth/zzij;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgk;->a:Lcom/google/android/gms/internal/firebase_auth/zzij;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_auth/zzgj;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->z:[Lcom/google/android/gms/internal/firebase_auth/zzgj;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_auth/zzgj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_auth/zzgj;

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
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;

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
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->o:I

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
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->o:I

    return v0
.end method

###### Class com.google.android.gms.internal.firebase_auth.zzgl (com.google.android.gms.internal.firebase_auth.zzgl)
.class final Lcom/google/android/gms/internal/firebase_auth/zzgl;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzik;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_auth/zzik<",
        "Lcom/google/android/gms/internal/firebase_auth/zzgj;",
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
