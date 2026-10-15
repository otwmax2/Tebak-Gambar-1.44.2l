###### Class da.d (da.d)
.class final Lda/d;
.super Ljava/lang/Object;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lda/k2;


# static fields
.field public static final o:Lda/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lda/d;

    invoke-direct {v0}, Lda/d;-><init>()V

    sput-object v0, Lda/d;->o:Lda/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Active"

    return-object v0
.end method
