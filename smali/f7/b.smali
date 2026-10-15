###### Class f7.b (f7.b)
.class public abstract Lf7/b;
.super Ljava/lang/Object;
.source "ReflectionAccessor.java"


# static fields
.field private static final a:Lf7/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Lc7/e;->c()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_e

    new-instance v0, Lf7/a;

    invoke-direct {v0}, Lf7/a;-><init>()V

    goto :goto_13

    :cond_e
    new-instance v0, Lf7/c;

    invoke-direct {v0}, Lf7/c;-><init>()V

    :goto_13
    sput-object v0, Lf7/b;->a:Lf7/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lf7/b;
    .registers 1

    .line 1
    sget-object v0, Lf7/b;->a:Lf7/b;

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/reflect/AccessibleObject;)V
.end method
