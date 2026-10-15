###### Class va.g (va.g)
.class public abstract Lva/g;
.super Lva/j;
.source "LinkedHashMapParcelConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lva/j<",
        "TK;TV;",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lva/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Ljava/util/Map;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lva/g;->j()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method
