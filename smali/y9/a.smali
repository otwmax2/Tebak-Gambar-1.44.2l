###### Class y9.a (y9.a)
.class public Ly9/a;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lu9/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly9/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Character;",
        ">;",
        "Lu9/a;"
    }
.end annotation


# static fields
.field public static final r:Ly9/a$a;


# instance fields
.field private final o:C

.field private final p:C

.field private final q:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ly9/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly9/a$a;-><init>(Lt9/g;)V

    sput-object v0, Ly9/a;->r:Ly9/a$a;

    return-void
.end method

.method public constructor <init>(CCI)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1d

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_15

    .line 2
    iput-char p1, p0, Ly9/a;->o:C

    .line 3
    invoke-static {p1, p2, p3}, Ln9/c;->c(III)I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, Ly9/a;->p:C

    .line 4
    iput p3, p0, Ly9/a;->q:I

    return-void

    .line 5
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c()C
    .registers 2

    .line 1
    iget-char v0, p0, Ly9/a;->o:C

    return v0
.end method

.method public final g()C
    .registers 2

    .line 1
    iget-char v0, p0, Ly9/a;->p:C

    return v0
.end method

.method public i()Li9/i;
    .registers 5

    .line 1
    new-instance v0, Ly9/b;

    iget-char v1, p0, Ly9/a;->o:C

    iget-char v2, p0, Ly9/a;->p:C

    iget v3, p0, Ly9/a;->q:I

    invoke-direct {v0, v1, v2, v3}, Ly9/b;-><init>(CCI)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly9/a;->i()Li9/i;

    move-result-object v0

    return-object v0
.end method

###### Class y9.a.C0305a (y9.a$a)
.class public final Ly9/a$a;
.super Ljava/lang/Object;
.source "Progressions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Ly9/a$a;-><init>()V

    return-void
.end method
