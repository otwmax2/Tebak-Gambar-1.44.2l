###### Class y8.j (y8.j)
.class public Ly8/j;
.super Ljava/lang/Object;
.source "Levenshtein.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    const-string v0, " "

    const-string v1, ""

    if-nez p0, :cond_8

    move-object p0, v1

    goto :goto_c

    .line 1
    :cond_8
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_c
    if-nez p1, :cond_f

    goto :goto_13

    .line 2
    :cond_f
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v0, :cond_2c

    .line 6
    aput v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_2c
    const/4 v0, 0x1

    .line 7
    :goto_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v0, v4, :cond_66

    .line 8
    aput v0, v2, v3

    add-int/lit8 v4, v0, -0x1

    move v6, v4

    const/4 v5, 0x1

    .line 9
    :goto_39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v5, v7, :cond_63

    .line 10
    aget v7, v2, v5

    add-int/lit8 v8, v5, -0x1

    aget v9, v2, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v9, v8, :cond_55

    goto :goto_57

    :cond_55
    add-int/lit8 v6, v6, 0x1

    :goto_57
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 11
    aget v7, v2, v5

    .line 12
    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_39

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 13
    :cond_66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    aget p0, v2, p0

    return p0
.end method
